import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mocsi_client/application/auth/auth_bloc.dart';
import 'package:mocsi_client/presentation/routes/app_router.gr.dart';

class ProfileTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.read<AuthBloc>().add(const AuthEvent.signedOut());
            context.router.pushAndRemoveUntil(const SignInPageRoute(),
                predicate: (_) => false);
          },
          child: const Text('Sign out'),
        ),
      ),
    );
  }
}
