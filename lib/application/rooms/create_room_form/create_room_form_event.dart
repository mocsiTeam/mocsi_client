part of 'create_room_form_bloc.dart';

@freezed
class CreateRoomFormEvent with _$CreateRoomFormEvent {
  const factory CreateRoomFormEvent.nameChanged(String nameStr) = _NameChanged;
  const factory CreateRoomFormEvent.passwordChanged(String passwordStr) =
      _PasswordChanged;
  const factory CreateRoomFormEvent.createRoomPressed() = _CreateRoomPressed;
}
