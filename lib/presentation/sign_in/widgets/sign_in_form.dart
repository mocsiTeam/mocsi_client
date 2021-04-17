import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mocsi_client/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:mocsi_client/presentation/core/colors.dart';
import 'package:mocsi_client/presentation/core/translation/i18n.dart';
import 'package:mocsi_client/presentation/routes/app_router.gr.dart';

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
            () {},
            (either) => either.fold(
                (failure) => {
                      FlushbarHelper.createError(
                          message: failure.map(
                        tokenDoesNotExist: (_) => I18n.unexpectedError,
                        noConnectionError: (_) => I18n.noConnectionError,
                        serverError: (_) => I18n.serverError,
                        unexpectedError: (_) => I18n.unexpectedError,
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
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Form(
                    autovalidateMode: state.showErrorMessages,
                    child: ListView(
                      padding: const EdgeInsets.all(8.0),
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const SizedBox(width: 6),
                              Text(I18n.settings),
                              const SizedBox(width: 6),
                              CircleAvatar(
                                backgroundColor: secondaryDarkColor,
                                child: IconButton(
                                  icon: const Icon(
                                    Icons.settings,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 18.0),
                        TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.email),
                            labelText: I18n.eMail,
                          ),
                          autocorrect: false,
                          keyboardType: TextInputType.emailAddress,
                          onChanged: (value) => context
                              .read<SignInFormBloc>()
                              .add(SignInFormEvent.emailChanged(value)),
                          validator: (_) => context
                              .read<SignInFormBloc>()
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
                        const SizedBox(height: 18.0),
                        TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.lock),
                            labelText: I18n.password,
                          ),
                          autocorrect: false,
                          obscureText: true,
                          onChanged: (value) => context
                              .read<SignInFormBloc>()
                              .add(SignInFormEvent.passwordChanged(value)),
                          validator: (_) => context
                              .read<SignInFormBloc>()
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
                        const SizedBox(height: 36.0),
                        ElevatedButton(
                          onPressed: () {
                            context.read<SignInFormBloc>().add(
                                const SignInFormEvent
                                    .signInWithEmailAndPasswordPressed());
                          },
                          child: Text(I18n.signIn.toUpperCase()),
                        ),
                        const SizedBox(height: 8.0),
                        ElevatedButton(
                          onPressed: () {
                            context.router.push(const RegistrationPageRoute());
                          },
                          child: Text(I18n.register.toUpperCase()),
                        ),
                        if (state.isSubmitting) ...[
                          const SizedBox(
                            height: 8,
                          ),
                          const LinearProgressIndicator(),
                        ]
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
