import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:mocsi_client/domain/auth/i_auth_facade.dart';
import 'package:mocsi_client/domain/profile/i_profile_repository.dart';
import 'package:mocsi_client/domain/profile/user.dart';

part 'profile_bloc.freezed.dart';

part 'profile_event.dart';

part 'profile_state.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final Logger _logger;
  final IAuthFacade _authFacade;
  final IProfileRepository _repository;

  ProfileBloc(
    this._logger,
    this._authFacade,
    this._repository,
  ) : super(const ProfileState.initial());

  @override
  Stream<ProfileState> mapEventToState(ProfileEvent event) async* {
    yield* event.map(
      profileOpened: (e) async* {
        _logger.i(e);
        yield const ProfileState.loading();
        final failureOrAccessToken = await _authFacade.signIn();
        yield await failureOrAccessToken.fold(
          (failure) {
            _logger.e(failure);
            return const ProfileState.loadFailure();
          },
          (accessToken) async {
            _logger.v(accessToken);
            final failureOrUser = await _repository.getUser(accessToken);
            return failureOrUser.fold(
              (failure) {
                _logger.e(failure);
                return const ProfileState.loadFailure();
              },
              (user) {
                _logger.i(user);
                return ProfileState.loadSuccess(user);
              },
            );
          },
        );
      },
      profileEditToggled: (e) async* {
        _logger.i(e);
        yield const ProfileState.loading();
      },
    );
  }
}
