import 'package:dartz/dartz.dart';
import 'package:mocsi_client/domain/auth/auth_failure.dart';
import 'package:mocsi_client/domain/auth/value_objects.dart';

import 'conference_user.dart';

abstract class IConferenceFacade {
  Future<Either<AuthFailure, ConferenceUser>> getConferenceUser(
      AccessToken accessToken);
}
