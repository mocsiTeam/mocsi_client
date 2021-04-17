part of 'registration_form_bloc.dart';

@freezed
class RegistrationFormState with _$RegistrationFormState {
  const factory RegistrationFormState({
    required EmailAddress emailAddress,
    required Password password,
    required NickName nickName,
    required FirstName firstName,
    required LastName lastName,
    required AutovalidateMode showErrorMessages,
    required bool isSubmitting,
    required Option<Either<AuthFailure, Unit>>
        registrationFailureOrSuccessOption,
  }) = _RegistrationFormState;

  factory RegistrationFormState.initial() => RegistrationFormState(
        emailAddress: EmailAddress(''),
        password: Password(''),
        nickName: NickName(''),
        firstName: FirstName(''),
        lastName: LastName(''),
        showErrorMessages: AutovalidateMode.disabled,
        isSubmitting: false,
        registrationFailureOrSuccessOption: none(),
      );
}
