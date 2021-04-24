import 'package:artemis/artemis.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:mocsi_client/domain/auth/auth_failure.dart';
import 'package:mocsi_client/domain/auth/core/value_objects.dart';
import 'package:mocsi_client/domain/auth/value_objects.dart';
import 'package:mocsi_client/domain/conference/conference_user.dart';
import 'package:mocsi_client/domain/conference/i_conference_facade.dart';
import 'package:mocsi_client/infrastructure/conference/graphql_conference_api.dart';
import 'package:mocsi_client/presentation/injection.dart';

@LazySingleton(as: IConferenceFacade)
class ConferenceFacade implements IConferenceFacade {
  final Logger _logger;

  ConferenceFacade(
    this._logger,
  );
  @override
  Future<Either<AuthFailure, ConferenceUser>> getConferenceUser(
      AccessToken accessToken) async {
    final client = getIt<ArtemisClient>(param1: accessToken.getOrCrash());
    final result = await client.execute(GetUserInfoQuery());

    if (!result.hasErrors) {
      final conferenceUser = ConferenceUser(
        firstName: FirstName(result.data!.getAuthUser.firstname),
        lastName: LastName(result.data!.getAuthUser.lastname),
        emailAddress: EmailAddress(result.data!.getAuthUser.email),
      );
      _logger.i(conferenceUser);
      return right(conferenceUser);
    } else {
      for (final error in result.errors!) {
        _logger.e(error.message);
      }

      return left(const AuthFailure.serverError());
    }
  }
}
