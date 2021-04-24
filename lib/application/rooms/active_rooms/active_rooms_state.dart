part of 'active_rooms_bloc.dart';

@freezed
class ActiveRoomsState with _$ActiveRoomsState {
  const factory ActiveRoomsState.initial() = _Initial;
  const factory ActiveRoomsState.loadInProgress() = _LoadInProgress;
  const factory ActiveRoomsState.loadSuccess(KtList<Room> activeRooms) =
      _LoadSuccess;
  const factory ActiveRoomsState.loadFailure(RoomsFailure failure) =
      _LoadFailure;
}
