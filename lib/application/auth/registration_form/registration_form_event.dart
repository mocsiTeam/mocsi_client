part of 'registration_form_bloc.dart';

@freezed
class RegistrationFormEvent with _$RegistrationFormEvent {
  const factory RegistrationFormEvent.emailChanged(String emailStr) =
      _EmailChanged;
  const factory RegistrationFormEvent.passwordChanged(String passwordStr) =
      _PasswordChanged;
  const factory RegistrationFormEvent.nickNameChanged(String nickNameStr) =
      _NickNameChanged;

  const factory RegistrationFormEvent.firstNameChanged(String firstNameStr) =
      _FirstNameChanged;

  const factory RegistrationFormEvent.lastNameChanged(String lastNameStr) =
      _LastNameChanged;

  const factory RegistrationFormEvent.registrationPressed() =
      _RegistrationPressed;
}
