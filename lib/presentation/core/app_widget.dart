import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mocsi_client/application/auth/auth_bloc.dart';

import '../injection.dart';
import '../routes/router.gr.dart' as auto_router;
import 'colors.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        ),
      ],
      child: MaterialApp(
        title: 'Mocsi',
        theme: ThemeData.light().copyWith(
          primaryColor: primaryColor,
          accentColor: secondaryColor,
          buttonColor: primaryColor,
          colorScheme: mainColorScheme,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          buttonTheme: ThemeData.light().buttonTheme.copyWith(colorScheme: mainColorScheme),
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ),
        builder: ExtendedNavigator.builder<auto_router.Router>(
          router: auto_router.Router(),
        ),
      ),
    );
  }
}
