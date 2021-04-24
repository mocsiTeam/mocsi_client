import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mocsi_client/application/auth/registration_form/registration_form_bloc.dart';
import 'package:mocsi_client/presentation/core/translation/i18n.dart';
import 'package:mocsi_client/presentation/routes/app_router.gr.dart';

class RegistrationForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegistrationFormBloc, RegistrationFormState>(
      listener: (context, state) {
        state.registrationFailureOrSuccessOption.fold(
            () {},
            (either) => either.fold(
                (failure) => {
                      FlushbarHelper.createError(
                          message: failure.map(
                        tokenDoesNotExist: (_) => I18n.unexpectedError,
                        noConnectionError: (_) => I18n.noConnectionError,
                        serverError: (_) => I18n.serverError,
                        unexpectedError: (_) => I18n.unexpectedError,
                        userAlreadyExists: (_) => I18n.userAlreadyExists,
                        invalidEmailAndPasswordCombination: (_) =>
                            I18n.invalidEmailAndPasswordCombinationError,
                      )).show(context)
                    },
                (r) => {
                      context.router.pushAndRemoveUntil(const HomePageRoute(),
                          predicate: (_) => false)
                    }));
      },
      builder: (context, state) {
        return SafeArea(
          child: Form(
            autovalidateMode: state.showErrorMessages,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: ListView(
                children: [
                  const SizedBox(height: 18),
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.email),
                      labelText: I18n.eMail,
                    ),
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (value) => context
                        .read<RegistrationFormBloc>()
                        .add(RegistrationFormEvent.emailChanged(value)),
                    validator: (_) => context
                        .read<RegistrationFormBloc>()
                        .state
                        .emailAddress
                        .value
                        .fold(
                          (failure) => failure.maybeMap(
                            invalidEmail: (_) => I18n.invalidEMail,
                            orElse: () => null,
                          ),
                          (_) => null,
                        ),
                  ),
                  const SizedBox(height: 18),
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.person),
                      labelText: I18n.nickName,
                    ),
                    keyboardType: TextInputType.name,
                    onChanged: (value) => context
                        .read<RegistrationFormBloc>()
                        .add(RegistrationFormEvent.nickNameChanged(value)),
                    validator: (_) => context
                        .read<RegistrationFormBloc>()
                        .state
                        .nickName
                        .value
                        .fold(
                          (failure) => failure.maybeMap(
                            shortName: (_) => I18n.invalidNickName,
                            orElse: () => null,
                          ),
                          (_) => null,
                        ),
                  ),
                  const SizedBox(height: 18),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: I18n.surname,
                    ),
                    keyboardType: TextInputType.name,
                    onChanged: (value) => context
                        .read<RegistrationFormBloc>()
                        .add(RegistrationFormEvent.lastNameChanged(value)),
                    validator: (_) => context
                        .read<RegistrationFormBloc>()
                        .state
                        .lastName
                        .value
                        .fold(
                          (failure) => failure.maybeMap(
                            invalidEmail: (_) => I18n.invalidSurname,
                            orElse: () => null,
                          ),
                          (_) => null,
                        ),
                  ),
                  const SizedBox(height: 18),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: I18n.name,
                    ),
                    keyboardType: TextInputType.name,
                    onChanged: (value) => context
                        .read<RegistrationFormBloc>()
                        .add(RegistrationFormEvent.firstNameChanged(value)),
                    validator: (_) => context
                        .read<RegistrationFormBloc>()
                        .state
                        .firstName
                        .value
                        .fold(
                          (failure) => failure.maybeMap(
                            shortName: (_) => I18n.invalidName,
                            orElse: () => null,
                          ),
                          (_) => null,
                        ),
                  ),
                  const SizedBox(height: 18),
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.lock),
                      labelText: I18n.password,
                    ),
                    autocorrect: false,
                    obscureText: true,
                    onChanged: (value) => context
                        .read<RegistrationFormBloc>()
                        .add(RegistrationFormEvent.passwordChanged(value)),
                    validator: (_) => context
                        .read<RegistrationFormBloc>()
                        .state
                        .password
                        .value
                        .fold(
                          (failure) => failure.maybeMap(
                            shortPassword: (_) => I18n.shortPassword,
                            orElse: () => null,
                          ),
                          (_) => null,
                        ),
                  ),
                  const SizedBox(height: 18),
                  ElevatedButton(
                    onPressed: () {
                      context.read<RegistrationFormBloc>().add(
                          const RegistrationFormEvent.registrationPressed());
                    },
                    child: Text(I18n.register.toUpperCase()),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
