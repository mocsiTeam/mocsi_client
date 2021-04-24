part of 'conference_bloc.dart';

@freezed
class ConferenceState with _$ConferenceState {
  const factory ConferenceState.initial() = Initial;
  const factory ConferenceState.conferenceJoined() = ConferenceJoined;
  const factory ConferenceState.errorWhileJoining() = ErrorWhileJoining;
}
