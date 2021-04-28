part of 'conference_bloc.dart';

@freezed
class ConferenceState with _$ConferenceState {
  const factory ConferenceState.initial() = Initial;

  const factory ConferenceState.conferenceJoined(Room room) = ConferenceJoined;

  const factory ConferenceState.errorWhileJoining() = ErrorWhileJoining;

  const factory ConferenceState.conferenceLoading() = ConferenceLoading;

  const factory ConferenceState.conferenceTerminated() = ConferenceTerminated;
}
