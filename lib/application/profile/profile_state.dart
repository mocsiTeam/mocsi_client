part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = Initial;

  const factory ProfileState.loading() = Loading;

  const factory ProfileState.loadSuccess(User user) = LoadSuccess;

  const factory ProfileState.loadFailure() = LoadFailure;
}
