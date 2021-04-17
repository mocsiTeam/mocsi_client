import 'package:auto_route/annotations.dart';
import 'package:mocsi_client/presentation/home/home_page.dart';
import 'package:mocsi_client/presentation/registration/registration_page.dart';
import 'package:mocsi_client/presentation/sign_in/sign_in_page.dart';
import 'package:mocsi_client/presentation/splash/splash_page.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: SignInPage),
    MaterialRoute(page: RegistrationPage),
    MaterialRoute(page: HomePage),
  ],
)
class $AppRouter {}
