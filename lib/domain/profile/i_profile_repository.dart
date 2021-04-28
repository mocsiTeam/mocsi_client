import 'package:dartz/dartz.dart';
import 'package:mocsi_client/domain/auth/auth_failure.dart';
import 'package:mocsi_client/domain/auth/value_objects.dart';
import 'package:mocsi_client/domain/profile/user.dart';

abstract class IProfileRepository {
  Future<Either<AuthFailure, User>> getUser(AccessToken accessToken);
}
