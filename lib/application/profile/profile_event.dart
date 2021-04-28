part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.profileOpened() = ProfileOpened;

  const factory ProfileEvent.profileEditToggled() = ProfileEditToggled;
}
