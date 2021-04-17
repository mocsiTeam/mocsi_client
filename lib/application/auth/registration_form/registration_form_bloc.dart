import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:mocsi_client/domain/auth/auth_failure.dart';
import 'package:mocsi_client/domain/auth/core/value_objects.dart';
import 'package:mocsi_client/domain/auth/i_auth_facade.dart';

part 'registration_form_bloc.freezed.dart';
part 'registration_form_event.dart';
part 'registration_form_state.dart';

@injectable
class RegistrationFormBloc
    extends Bloc<RegistrationFormEvent, RegistrationFormState> {
  final IAuthFacade _authFacade;
  final Logger _logger;

  RegistrationFormBloc(
    this._authFacade,
    this._logger,
  ) : super(RegistrationFormState.initial());

  @override
  Stream<RegistrationFormState> mapEventToState(
      RegistrationFormEvent event) async* {
    yield* event.map(
      emailChanged: (e) async* {
        _logger.v(e);
        yield state.copyWith(
          emailAddress: EmailAddress(e.emailStr),
          registrationFailureOrSuccessOption: none(),
        );
      },
      passwordChanged: (e) async* {
        _logger.v(e);
        yield state.copyWith(
          password: Password(e.passwordStr),
          registrationFailureOrSuccessOption: none(),
        );
      },
      nickNameChanged: (e) async* {
        _logger.v(e);
        yield state.copyWith(
          nickName: NickName(e.nickNameStr),
          registrationFailureOrSuccessOption: none(),
        );
      },
      firstNameChanged: (e) async* {
        _logger.v(e);
        yield state.copyWith(
          firstName: FirstName(e.firstNameStr),
          registrationFailureOrSuccessOption: none(),
        );
      },
      lastNameChanged: (e) async* {
        _logger.v(e);
        yield state.copyWith(
          lastName: LastName(e.lastNameStr),
          registrationFailureOrSuccessOption: none(),
        );
      },
      registrationPressed: (e) async* {
        _logger.v(e);
        yield* _performActionOnAuthFacadeWithUserData(_authFacade.register);
      },
    );
  }

  Stream<RegistrationFormState> _performActionOnAuthFacadeWithUserData(
    Future<Either<AuthFailure, Unit>> Function({
      required EmailAddress emailAddress,
      required Password password,
      required NickName nickName,
      required FirstName firstName,
      required LastName lastName,
    })
        forwardedCall,
  ) async* {
    late Either<AuthFailure, Unit> failureOrSuccess;
    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();

    if (isEmailValid && isPasswordValid) {
      failureOrSuccess = await forwardedCall(
        emailAddress: state.emailAddress,
        password: state.password,
        nickName: state.nickName,
        firstName: state.firstName,
        lastName: state.lastName,
      );
      _logger.v(failureOrSuccess);

      yield state.copyWith(
        showErrorMessages: AutovalidateMode.always,
        isSubmitting: false,
        registrationFailureOrSuccessOption: optionOf(failureOrSuccess),
      );
    } else {
      yield state.copyWith(
        showErrorMessages: AutovalidateMode.onUserInteraction,
        isSubmitting: false,
        registrationFailureOrSuccessOption: none(),
      );
    }
  }
}
