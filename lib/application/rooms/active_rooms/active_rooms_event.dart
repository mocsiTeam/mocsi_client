part of 'active_rooms_bloc.dart';

@freezed
class ActiveRoomsEvent with _$ActiveRoomsEvent {
  const factory ActiveRoomsEvent.opened() = _Opened;
  const factory ActiveRoomsEvent.roomsReceived(
      Either<RoomsFailure, KtList<Room>> failureOrRooms) = _RoomsReceived;
}
