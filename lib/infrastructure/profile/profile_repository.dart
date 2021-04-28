import 'package:artemis/artemis.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:mocsi_client/domain/auth/auth_failure.dart';
import 'package:mocsi_client/domain/auth/core/value_objects.dart';
import 'package:mocsi_client/domain/auth/value_objects.dart';
import 'package:mocsi_client/domain/profile/i_profile_repository.dart';
import 'package:mocsi_client/domain/profile/user.dart';
import 'package:mocsi_client/infrastructure/profile/graphql_profile_api.dart';
import 'package:mocsi_client/presentation/injection.dart';

@LazySingleton(as: IProfileRepository)
class ProfileRepository implements IProfileRepository {
  final Logger _logger;

  ProfileRepository(this._logger);

  @override
  Future<Either<AuthFailure, User>> getUser(AccessToken accessToken) async {
    final client = getIt<ArtemisClient>(param1: accessToken.getOrCrash());
    final result = await client.execute(GetUserQuery());
    if (!result.hasErrors) {
      final user = User(
        firstName: FirstName(result.data!.getAuthUser.firstname),
        lastName: LastName(result.data!.getAuthUser.lastname),
        nickName: NickName(result.data!.getAuthUser.nickname),
        emailAddress: EmailAddress(result.data!.getAuthUser.email),
      );
      _logger.i(user);
      return right(user);
    } else {
      for (final error in result.errors!) {
        _logger.e(error.message);
      }
      return left(const AuthFailure.serverError());
    }
  }
}
