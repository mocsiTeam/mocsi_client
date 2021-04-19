import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:mocsi_client/domain/auth/value_objects.dart';
import 'package:mocsi_client/domain/rooms/room.dart';
import 'package:mocsi_client/domain/rooms/rooms_failure.dart';

abstract class IRoomsRepository {
  Future<Either<RoomsFailure, KtList<Room>>> getRooms(AccessToken accessToken);
  Future<Either<RoomsFailure, Unit>> createRoom(
      AccessToken accessToken, Room room);
  Future<Either<RoomsFailure, Unit>> editRoom(
      AccessToken accessToken, Room room);
  Future<Either<RoomsFailure, Unit>> deleteRoom(
      AccessToken accessToken, Room room);
}
