part of 'registration_form_bloc.dart';

@freezed
class RegistrationFormEvent with _$RegistrationFormEvent {
  const factory RegistrationFormEvent.emailChanged(String emailStr) =
      EmailChanged;
  const factory RegistrationFormEvent.passwordChanged(String passwordStr) =
      PasswordChanged;
  const factory RegistrationFormEvent.nickNameChanged(String nickNameStr) =
      NickNameChanged;

  const factory RegistrationFormEvent.firstNameChanged(String firstNameStr) =
      FirstNameChanged;

  const factory RegistrationFormEvent.lastNameChanged(String lastNameStr) =
      LastNameChanged;

  const factory RegistrationFormEvent.registrationPressed() =
      RegistrationPressed;
}
