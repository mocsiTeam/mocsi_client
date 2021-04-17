import 'package:connectivity/connectivity.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:artemis/artemis.dart';
import 'package:mocsi_client/domain/auth/auth_failure.dart';
import 'package:mocsi_client/domain/auth/core/value_objects.dart';
import 'package:mocsi_client/domain/auth/i_auth_facade.dart';
import 'package:mocsi_client/domain/auth/value_objects.dart';
import 'package:mocsi_client/infrastructure/core/api_injectable_module.dart';
import 'package:mocsi_client/infrastructure/core/constants.dart';
import 'package:mocsi_client/infrastructure/core/graphql/graphql_api.dart';
import 'package:mocsi_client/presentation/injection.dart';

@LazySingleton(as: IAuthFacade)
class ApiAuthFacade implements IAuthFacade {
  final FlutterSecureStorage _secureStorage;
  final Logger _logger;
  final Connectivity _connectivity;
  final ArtemisClient client = ArtemisClient(kApiEndpoint);

  ApiAuthFacade(
    this._secureStorage,
    this._logger,
    this._connectivity,
  );
  @override
  Future<Either<AuthFailure, Unit>> register({
    required EmailAddress emailAddress,
    required Password password,
    required NickName nickName,
    required FirstName firstName,
    required LastName lastName,
  }) async {
    final connectivityResult = await _connectivity.checkConnectivity();
    if (connectivityResult != ConnectivityResult.none) {
      final emailAddressStr = emailAddress.getOrCrash();
      final passwordStr = password.getOrCrash();
      final nickNameStr = nickName.getOrCrash();
      final firstNameStr = firstName.getOrCrash();
      final lastNameStr = lastName.getOrCrash();
      _logger.i(
          'Register: $emailAddressStr $passwordStr $nickNameStr $firstNameStr $lastNameStr');
      final result = await client.execute(CreateUserMutation(
          variables: CreateUserArguments(
        email: emailAddressStr,
        password: passwordStr,
        nickName: nickNameStr,
        firstName: firstNameStr,
        lastName: lastNameStr,
      )));
      if (!result.hasErrors) {
        _logger.i('User registered successfully');
        _logger.i(result.data!.createUser.refreshToken);
        _logger.i(result.data!.createUser.accessToken);

        final loginResult = await login(
          emailAddress: emailAddress,
          password: password,
        );

        return loginResult;
      } else {
        _logger.e(result.errors);
        return left(const AuthFailure.serverError());
      }
    } else {
      _logger.i('ConnectivityResult: ${connectivityResult.toString()}');
      return left(const AuthFailure.noConnectionError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> login({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    try {
      final connectivityResult = await _connectivity.checkConnectivity();
      if (connectivityResult != ConnectivityResult.none) {
        final emailAddressStr = emailAddress.getOrCrash();
        final passwordStr = password.getOrCrash();
        final result = await client.execute(LoginMutation(
            variables: LoginArguments(
          nickname: emailAddressStr,
          password: passwordStr,
        )));
        if (!result.hasErrors) {
          final accessTokenStr = result.data!.login.accessToken;
          _logger.i('Saving AccessToken: $accessTokenStr');
          await _secureStorage.write(
            key: kAccessToken,
            value: accessTokenStr,
          );
          final refreshTokenStr = result.data!.login.refreshToken;
          _logger.i('Saving RefreshToken: $refreshTokenStr');
          await _secureStorage.write(
            key: kRefreshToken,
            value: refreshTokenStr,
          );
          return right(unit);
        } else {
          _logger.i('$emailAddressStr $passwordStr');
          _logger.e('login Response (LoginMutation). Errors: ${result.errors}');
          if (result.errors!.first.message
              .contains('wrong username or password')) {
            return left(const AuthFailure.invalidEmailAndPasswordCombination());
          } else {
            return left(const AuthFailure.serverError());
          }
        }
      } else {
        _logger.i('ConnectivityResult: ${connectivityResult.toString()}');
        return left(const AuthFailure.noConnectionError());
      }
    } on PlatformException catch (e) {
      _logger.wtf(e.message, e.code);
      return left(const AuthFailure.unexpectedError());
    }
  }

  @override
  Future<Either<AuthFailure, AccessToken>> refreshToken(
      RefreshToken refreshToken) async {
    try {
      final connectivityResult = await _connectivity.checkConnectivity();
      if (connectivityResult != ConnectivityResult.none) {
        final refreshTokenStr = refreshToken.getOrCrash();
        _logger.i('RefreshToken: $refreshTokenStr');
        final result = await client.execute(RefreshTokenMutation(
            variables: RefreshTokenArguments(token: refreshTokenStr)));
        if (!result.hasErrors) {
          final accessTokenStr = result.data!.refreshToken;
          _logger.i('AccessToken: $accessTokenStr');
          final accessToken = AccessToken(accessTokenStr);
          await _secureStorage.write(key: kAccessToken, value: accessTokenStr);
          return right(accessToken);
        } else {
          _logger.e(
              'refreshToken Response (RefreshTokenMutation). Errors: ${result.errors}');
          return left(const AuthFailure.serverError());
        }
      } else {
        _logger.i('ConnectivityResult: ${connectivityResult.toString()}');
        return left(const AuthFailure.noConnectionError());
      }
    } on PlatformException catch (e) {
      _logger.wtf(e.message, e.code);
      return left(const AuthFailure.unexpectedError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signIn() async {
    try {
      final connectivityResult = await _connectivity.checkConnectivity();
      if (connectivityResult != ConnectivityResult.none) {
        final accessToken = await _secureStorage.read(key: kAccessToken);
        _logger.i('Secure storage: $accessToken');
        if (accessToken != null) {
          final clientWithAccessToken =
              getIt<ArtemisClient>(param1: accessToken);
          final result =
              await clientWithAccessToken.execute(GetAuthUserQuery());
          _logger.i(
              'signIn Response (GetAuthUserQuery). Has errors: ${result.hasErrors}');
          _logger.e(
              'signIn Response (GetAuthUserQuery). Has errors: ${result.errors}');
          if (!result.hasErrors) {
            return right(unit);
          } else if (result.errors!.first.message.contains('access denied')) {
            _logger
                .i('signIn Response (GetAuthUserQuery). Error: token expired');
            final refreshTokenStr =
                await _secureStorage.read(key: kRefreshToken);
            if (refreshTokenStr != null) {
              final result = await refreshToken(RefreshToken(refreshTokenStr));
              _logger.i(result);
              return result.fold(
                (l) => left(l),
                (_) => right(unit),
              );
            } else {
              _logger.i('No token in storage');
              return left(const AuthFailure.tokenDoesNotExist());
            }
          } else {
            _logger.e(
                'signIn Response (GetAuthUserQuery). Errors: ${result.errors}');
            return left(const AuthFailure.serverError());
          }
        } else {
          _logger.i('No token in storage');
          return left(const AuthFailure.tokenDoesNotExist());
        }
      } else {
        _logger.i('ConnectivityResult: ${connectivityResult.toString()}');
        return left(const AuthFailure.noConnectionError());
      }
    } on PlatformException catch (e) {
      _logger.e(e.toString());
      return left(const AuthFailure.unexpectedError());
    }
  }

  @override
  Future<void> signOut() async {
    try {
      _logger.i('Signing out');
      await _secureStorage.deleteAll();
      return;
    } on PlatformException catch (e) {
      _logger.wtf(e.message, e.code);
      return;
    }
  }
}
