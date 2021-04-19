part of 'create_room_form_bloc.dart';

@freezed
class CreateRoomFormEvent with _$CreateRoomFormEvent {
  const factory CreateRoomFormEvent.nameChanged(String nameStr) = NameChanged;
  const factory CreateRoomFormEvent.passwordChanged(String passwordStr) =
      PasswordChanged;
  const factory CreateRoomFormEvent.createRoomPressed() = CreateRoomPressed;
}
