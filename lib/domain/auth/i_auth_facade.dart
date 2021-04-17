import 'package:dartz/dartz.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:mocsi_client/domain/auth/core/value_objects.dart';
import 'package:mocsi_client/domain/auth/value_objects.dart';

import 'auth_failure.dart';

abstract class IAuthFacade {
  /// Receives all user parameters
  /// tries to create new user, and then login and retrieve token pair
  ///
  /// If successful, saves [AccessToken] and [RefreshToken]
  /// in [FlutterSecureStorage]
  Future<Either<AuthFailure, Unit>> register({
    required EmailAddress emailAddress,
    required Password password,
    required NickName nickName,
    required FirstName firstName,
    required LastName lastName,
  });

  /// Receives [EmailAddress] and [Password]
  /// tries to login and retrieve token pair
  ///
  /// If successful, saves [AccessToken] and [RefreshToken]
  /// in [FlutterSecureStorage]
  Future<Either<AuthFailure, Unit>> login({
    required EmailAddress emailAddress,
    required Password password,
  });

  /// Receives [RefreshToken] and refreshes [AccessToken]
  ///
  /// Saves token in [FlutterSecureStorage] for easy access
  Future<Either<AuthFailure, AccessToken>> refreshToken(
      RefreshToken refreshToken);

  /// Checks if user has token or not
  ///
  /// If user has [AccessToken] and it's not expired,
  /// auth flow ends.
  Future<Either<AuthFailure, Unit>> signIn();

  /// Signs the user out
  ///
  /// Deletes all tokens, stored in [FlutterSecureStorage]
  Future<void> signOut();
}
