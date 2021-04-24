part of 'conference_bloc.dart';

@freezed
class ConferenceEvent with _$ConferenceEvent {
  const factory ConferenceEvent.conferenceOpened(Room room) = ConferenceOpened;
}
