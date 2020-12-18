import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mocsi_client/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:mocsi_client/presentation/core/colors.dart';

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
            () => {},
            (either) => either.fold(
                (failure) => {
                      FlushbarHelper.createError(
                        message: failure.map(
                          cancelledByUser: (_) => 'Cancelled',
                          serverError: (_) => 'Server error',
                          emailAlreadyInUse: (_) => 'Email already in use',
                          invalidEmailAndPasswordCombination: (_) => 'Invalid email and password combination',
                        ),
                      ),
                    },
                (_) => {
                      // TODO: add nav
                    }));
      },
      builder: (context, state) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Form(
                    autovalidateMode: state.showErrorMessages,
                    child: ListView(
                      padding: const EdgeInsets.all(8.0),
                      children: [
                        Image.asset(
                          'assets/logo.png',
                          height: 90,
                          width: 90,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            children: [
                              const Expanded(child: SizedBox()),
                              Text(
                                '/klgtu/',
                                style: Theme.of(context).textTheme.bodyText1.copyWith(color: primaryColor),
                              ),
                              const SizedBox(width: 6),
                              CircleAvatar(
                                backgroundColor: primaryColor,
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
                        TextFormField(
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.email),
                            labelText: 'Email',
                          ),
                          autocorrect: false,
                          keyboardType: TextInputType.emailAddress,
                          onChanged: (value) => context.bloc<SignInFormBloc>().add(SignInFormEvent.emailChanged(value)),
                          validator: (_) => context.bloc<SignInFormBloc>().state.emailAddress.value.fold(
                                (failure) => failure.maybeMap(
                                  invalidEmail: (_) => 'Invalid Email',
                                  orElse: () => null,
                                ),
                                (_) => null,
                              ),
                        ),
                        const SizedBox(height: 8.0),
                        TextFormField(
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.lock),
                            labelText: 'Password',
                          ),
                          autocorrect: false,
                          obscureText: true,
                          onChanged: (value) => context.bloc<SignInFormBloc>().add(SignInFormEvent.passwordChanged(value)),
                          validator: (_) => context.bloc<SignInFormBloc>().state.password.value.fold(
                                (failure) => failure.maybeMap(
                                  shortPassword: (_) => 'Short Password',
                                  orElse: () => null,
                                ),
                                (_) => null,
                              ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: FlatButton(
                                onPressed: () {
                                  context.bloc<SignInFormBloc>().add(const SignInFormEvent.signInWithEmailAndPasswordPressed());
                                },
                                child: const Text('SIGN IN'),
                              ),
                            ),
                            Expanded(
                              child: FlatButton(
                                onPressed: () {
                                  context.bloc<SignInFormBloc>().add(const SignInFormEvent.registerWithEmailAndPasswordPressed());
                                },
                                child: const Text('REGISTER'),
                              ),
                            ),
                          ],
                        ),
                        RaisedButton(
                          onPressed: () {
                            context.bloc<SignInFormBloc>().add(const SignInFormEvent.signInWithGooglePressed());
                          },
                          color: primaryColor,
                          child: const Text(
                            'SIGN IN WITH GOOGLE',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
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
