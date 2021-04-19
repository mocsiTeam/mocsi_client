import 'package:artemis/artemis.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:logger/logger.dart';
import 'package:mocsi_client/domain/auth/value_objects.dart';
import 'package:mocsi_client/domain/rooms/i_rooms_repository.dart';
import 'package:mocsi_client/domain/rooms/room.dart';
import 'package:mocsi_client/domain/rooms/rooms_failure.dart';
import 'package:mocsi_client/domain/rooms/value_objects.dart';
import 'package:mocsi_client/infrastructure/rooms/graphql_rooms_api.dart';
import 'package:mocsi_client/presentation/injection.dart';

@LazySingleton(as: IRoomsRepository)
class RoomsRepository implements IRoomsRepository {
  final Logger _logger;

  RoomsRepository(
    this._logger,
  );

  @override
  Future<Either<RoomsFailure, KtList<Room>>> getRooms(
      AccessToken accessToken) async {
    final clientWithAccessToken =
        getIt<ArtemisClient>(param1: accessToken.getOrCrash());
    final result = await clientWithAccessToken.execute(GetMyRoomsQuery());
    if (!result.hasErrors) {
      if (result.data!.getMyRooms == null || result.data!.getMyRooms!.isEmpty) {
        return right(const KtList.empty());
      } else {
        final list = result.data!.getMyRooms!
            .map(
              (element) => Room(
                url: ConferenceUrl.fromUrl(element.link),
                name: Name(element.name),
                password: Password(''),
              ),
            )
            .toImmutableList();
        _logger.i(list);
        return right(list);
      }
    } else {
      _logger.e(result.errors);
      return left(const RoomsFailure.serverError());
    }
  }

  @override
  Future<Either<RoomsFailure, Unit>> createRoom(
      AccessToken accessToken, Room room) async {
    final clientWithAccessToken =
        getIt<ArtemisClient>(param1: accessToken.getOrCrash());
    _logger.v(accessToken.getOrCrash());
    final result = await clientWithAccessToken.execute(CreateRoomMutation(
        variables: CreateRoomArguments(
      name: room.name.getOrCrash(),
      password: room.password.getOrCrash(),
    )));
    if (!result.hasErrors) {
      if (result.data!.createRoom.error.isEmpty) {
        return right(unit);
      } else {
        _logger.e(result.data!.createRoom.error);
        return left(const RoomsFailure.serverError());
      }
    } else {
      for (final error in result.errors!) {
        _logger.e(error.message);
        _logger.e(error.extensions);
      }
      return left(const RoomsFailure.serverError());
    }
  }

  @override
  Future<Either<RoomsFailure, Unit>> editRoom(
      AccessToken accessToken, Room room) async {
    // TODO: implement editRoom
    throw UnimplementedError();
  }

  @override
  Future<Either<RoomsFailure, Unit>> deleteRoom(
      AccessToken accessToken, Room room) async {
    // TODO: implement deleteRoom
    throw UnimplementedError();
  }
}
