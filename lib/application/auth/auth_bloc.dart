import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:meta/meta.dart';
import 'package:mocsi_client/domain/auth/i_auth_facade.dart';

part 'auth_event.dart';
part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;
  final Logger _logger;

  AuthBloc(this._authFacade, this._logger) : super(const AuthState.initial());

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    yield* event.map(
      authCheckRequested: (e) async* {
        final result = await _authFacade.signIn();
        yield result.fold(
          (failure) {
            _logger.i(failure);
            return const AuthState.unAuthenticated();
          },
          (_) {
            _logger.i('AuthState.authenticated');
            return const AuthState.authenticated();
          },
        );
      },
      signedOut: (e) async* {
        await _authFacade.signOut();
        yield const AuthState.unAuthenticated();
      },
    );
  }
}
