import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:mocsi_client/domain/auth/auth_failure.dart' as auth;
import 'package:mocsi_client/domain/auth/i_auth_facade.dart';
import 'package:mocsi_client/domain/rooms/i_rooms_repository.dart';
import 'package:mocsi_client/domain/rooms/room.dart';
import 'package:mocsi_client/domain/rooms/rooms_failure.dart';
import 'package:mocsi_client/domain/rooms/value_objects.dart';

part 'create_room_form_bloc.freezed.dart';
part 'create_room_form_event.dart';
part 'create_room_form_state.dart';

@injectable
class CreateRoomFormBloc
    extends Bloc<CreateRoomFormEvent, CreateRoomFormState> {
  final IAuthFacade _authFacade;
  final IRoomsRepository _roomsRepository;
  final Logger _logger;

  CreateRoomFormBloc(
    this._authFacade,
    this._roomsRepository,
    this._logger,
  ) : super(CreateRoomFormState.initial());

  @override
  Stream<CreateRoomFormState> mapEventToState(
      CreateRoomFormEvent event) async* {
    yield* event.map(
      nameChanged: (e) async* {
        _logger.v(e);
        yield state.copyWith(
          name: Name(e.nameStr),
          createRoomFailureOrSuccessOption: none(),
        );
      },
      passwordChanged: (e) async* {
        _logger.v(e);
        yield state.copyWith(
          password: Password(e.passwordStr),
          createRoomFailureOrSuccessOption: none(),
        );
      },
      createRoomPressed: (_) async* {
        final failureOrToken = await _authFacade.signIn();
        _logger.i(failureOrToken);
        final Either<RoomsFailure, Unit> failureOrCreated =
            await failureOrToken.fold(
          (failure) => left(translateAuthFailure(failure)),
          (token) async {
            _logger.v(token);
            final failureOrCreated = await _roomsRepository.createRoom(
              token,
              Room(
                url: ConferenceUrl.fromUrl(''),
                name: state.name,
                password: state.password,
                uniqueName: UniqueId(),
              ),
            );
            return failureOrCreated.fold(
              (failure) => left(failure),
              (created) => right(unit),
            );
          },
        );

        yield state.copyWith(
          showErrorMessages: AutovalidateMode.always,
          isSubmitting: false,
          createRoomFailureOrSuccessOption: optionOf(failureOrCreated),
        );
      },
    );
  }

  RoomsFailure translateAuthFailure(auth.AuthFailure authFailure) {
    if (authFailure is auth.NoConnectionError) {
      return const RoomsFailure.noConnectionError();
    }
    if (authFailure is auth.ServerError) {
      return const RoomsFailure.serverError();
    } else {
      return const RoomsFailure.unexpectedError();
    }
  }
}
