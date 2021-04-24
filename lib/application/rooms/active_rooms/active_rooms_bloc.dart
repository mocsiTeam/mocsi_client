import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:logger/logger.dart';
import 'package:mocsi_client/domain/auth/auth_failure.dart' as auth;
import 'package:mocsi_client/domain/auth/i_auth_facade.dart';
import 'package:mocsi_client/domain/rooms/i_rooms_repository.dart';
import 'package:mocsi_client/domain/rooms/room.dart';
import 'package:mocsi_client/domain/rooms/rooms_failure.dart';

part 'active_rooms_bloc.freezed.dart';
part 'active_rooms_event.dart';
part 'active_rooms_state.dart';

@injectable
class ActiveRoomsBloc extends Bloc<ActiveRoomsEvent, ActiveRoomsState> {
  final IAuthFacade _authFacade;
  final IRoomsRepository _repository;
  final Logger _logger;

  ActiveRoomsBloc(
    this._authFacade,
    this._repository,
    this._logger,
  ) : super(const ActiveRoomsState.initial());

  @override
  Stream<ActiveRoomsState> mapEventToState(ActiveRoomsEvent event) async* {
    RoomsFailure translateAuthFailure(auth.AuthFailure authFailure) {
      if (authFailure is NoConnectionError) {
        return const RoomsFailure.noConnectionError();
      }
      if (authFailure is auth.ServerError) {
        return const RoomsFailure.serverError();
      } else {
        return const RoomsFailure.unexpectedError();
      }
    }

    yield* event.map(
      opened: (_) async* {
        yield const ActiveRoomsState.loadInProgress();
        final failureOrToken = await _authFacade.signIn();
        _logger.i(failureOrToken);

        yield await failureOrToken
            .fold((l) => ActiveRoomsState.loadFailure(translateAuthFailure(l)),
                (token) async {
          _logger.v(token);
          final failureOrRooms = await _repository.getRooms(token);
          return failureOrRooms.fold(
            (l) => ActiveRoomsState.loadFailure(l),
            (rooms) => ActiveRoomsState.loadSuccess(rooms),
          );
        });
      },
      roomsReceived: (e) async* {
        _logger.i(e);
        yield e.failureOrRooms.fold(
          (failure) => ActiveRoomsState.loadFailure(failure),
          (rooms) => ActiveRoomsState.loadSuccess(rooms),
        );
      },
    );
  }
}
