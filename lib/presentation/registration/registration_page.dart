import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mocsi_client/application/auth/registration_form/registration_form_bloc.dart';
import 'package:mocsi_client/presentation/injection.dart';
import 'package:mocsi_client/presentation/registration/widgets/registration_form.dart';
import 'package:mocsi_client/presentation/core/translation/i18n.dart';

class RegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(I18n.registration),
      ),
      body: Container(
        decoration: const BoxDecoration(),
        child: BlocProvider(
          create: (context) => getIt<RegistrationFormBloc>(),
          child: RegistrationForm(),
        ),
      ),
    );
  }
}
