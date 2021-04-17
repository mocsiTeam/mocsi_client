import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:mocsi_client/domain/auth/auth_failure.dart';
import 'package:mocsi_client/domain/auth/core/value_objects.dart';
import 'package:mocsi_client/domain/auth/i_auth_facade.dart';

part 'sign_in_form_bloc.freezed.dart';
part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _authFacade;
  final Logger _logger;

  SignInFormBloc(
    this._authFacade,
    this._logger,
  ) : super(SignInFormState.initial());

  @override
  Stream<SignInFormState> mapEventToState(SignInFormEvent event) async* {
    yield* event.map(
      emailChanged: (e) async* {
        _logger.v(e);
        yield state.copyWith(
          emailAddress: EmailAddress(e.emailStr),
          authFailureOrSuccessOption: none(),
        );
      },
      passwordChanged: (e) async* {
        _logger.v(e);
        yield state.copyWith(
          password: Password(e.passwordStr),
          authFailureOrSuccessOption: none(),
        );
      },
      signInWithEmailAndPasswordPressed: (e) async* {
        _logger.v(e);
        yield* _performActionOnAuthFacadeWithEmailAndPassword(
          _authFacade.login,
        );
      },
    );
  }

  Stream<SignInFormState> _performActionOnAuthFacadeWithEmailAndPassword(
    Future<Either<AuthFailure, Unit>> Function({
      required EmailAddress emailAddress,
      required Password password,
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
      );
      _logger.v(failureOrSuccess);

      yield state.copyWith(
        showErrorMessages: AutovalidateMode.always,
        isSubmitting: false,
        authFailureOrSuccessOption: optionOf(failureOrSuccess),
      );
    } else {
      yield state.copyWith(
        showErrorMessages: AutovalidateMode.onUserInteraction,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
    }
  }
}
