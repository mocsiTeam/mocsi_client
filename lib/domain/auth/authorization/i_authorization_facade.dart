import 'package:dartz/dartz.dart';
import 'package:mocsi_client/domain/auth/authorization/value_objects.dart';
import 'package:mocsi_client/domain/auth/authorization/authorization_failure.dart';
import 'package:mocsi_client/domain/auth/core/value_objects.dart';

abstract class IAuthorizationFacade {
  Future<Either<AuthorizationFailure, AccessToken>> getAccessToken({
    required EmailAddress emailAddress,
    required Password password,
  });

  Future<Either<AuthorizationFailure, AccessToken>> createUser({
    required EmailAddress emailAddress,
    required Password password,
  });
}
