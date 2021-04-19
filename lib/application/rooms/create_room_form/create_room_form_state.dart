part of 'create_room_form_bloc.dart';

@freezed
class CreateRoomFormState with _$CreateRoomFormState {
  const factory CreateRoomFormState({
    required Name name,
    required Password password,
    required AutovalidateMode showErrorMessages,
    required bool isSubmitting,
    required Option<Either<RoomsFailure, Unit>>
        createRoomFailureOrSuccessOption,
  }) = _CreateRoomFormState;

  factory CreateRoomFormState.initial() => CreateRoomFormState(
        name: Name(''),
        password: Password(''),
        showErrorMessages: AutovalidateMode.disabled,
        isSubmitting: false,
        createRoomFailureOrSuccessOption: none(),
      );
}
