import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:mocsi_client/domain/auth/authorization/authorization_failure.dart';
import 'package:mocsi_client/domain/auth/authorization/i_authorization_facade.dart';
import 'package:mocsi_client/domain/auth/authorization/value_objects.dart';
import 'package:artemis/artemis.dart';
import 'package:mocsi_client/domain/auth/core/value_objects.dart';
import 'package:mocsi_client/infrastructure/core/graphql_api.dart';

@LazySingleton(as: IAuthorizationFacade)
class ApiAuthorizationFacade implements IAuthorizationFacade {
  final ArtemisClient client;
  final Logger logger;

  ApiAuthorizationFacade(this.client, this.logger);

  @override
  Future<Either<AuthorizationFailure, AccessToken>> getAccessToken({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    try {
      final response = await client.execute(
        LoginMutation(
          variables: LoginArguments(
            nickname: emailAddress.getOrCrash(),
            password: password.getOrCrash(),
          ),
        ),
      );

      if (response.data != null) {
        return right(AccessToken(response.data!.login.accessToken));
      } else {
        logger.e('response.data == null');
        return left(const UnexpectedError());
      }
    } on Exception catch (e) {
      logger.e(e.toString());
      return left(const UnexpectedError());
    }
  }

  @override
  Future<Either<AuthorizationFailure, AccessToken>> createUser({
    required EmailAddress emailAddress,
    required Password password,
  }) {
    // TODO: implement createUser
    throw UnimplementedError();
  }
}
