import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:mocsi_client/application/auth/auth_bloc.dart';
import 'package:mocsi_client/presentation/routes/app_router.gr.dart';

import '../injection.dart';
import 'colors.dart';
import 'translation/i18n.dart';

class AppWidget extends StatelessWidget {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        ),
      ],
      child: MaterialApp.router(
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
        title: 'Mocsi',
        localizationsDelegates: const [
          I18nDelegate(),
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: I18nDelegate.supportedLocals,
        theme: ThemeData.light().copyWith(
          primaryColor: primaryColor,
          accentColor: secondaryColor,
          buttonColor: primaryColor,
          colorScheme: mainColorScheme,
          floatingActionButtonTheme:
              ThemeData.light().floatingActionButtonTheme.copyWith(
                    backgroundColor: secondaryDarkColor,
                    foregroundColor: Colors.white,
                  ),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          bottomNavigationBarTheme:
              ThemeData.light().bottomNavigationBarTheme.copyWith(
                    backgroundColor: primaryColor,
                    selectedItemColor: Colors.white,
                    unselectedItemColor: unselectedColor,
                  ),
          buttonTheme: ThemeData.light()
              .buttonTheme
              .copyWith(colorScheme: mainColorScheme),
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ),
      ),
    );
  }
}
