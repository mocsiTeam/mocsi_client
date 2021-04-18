import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:mocsi_client/presentation/calendar/calendar_tab.dart';
import 'package:mocsi_client/presentation/home/home_page.dart';
import 'package:mocsi_client/presentation/profile/profile_tab.dart';
import 'package:mocsi_client/presentation/registration/registration_page.dart';
import 'package:mocsi_client/presentation/rooms/create_room_page.dart';
import 'package:mocsi_client/presentation/rooms/rooms_tab.dart';
import 'package:mocsi_client/presentation/sign_in/sign_in_page.dart';
import 'package:mocsi_client/presentation/splash/splash_page.dart';

const String kCalendar = 'Calendar';
const String kRooms = 'Rooms';
const String kProfile = 'Profile';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: SignInPage),
    MaterialRoute(page: RegistrationPage),
    AutoRoute(
      page: HomePage,
      path: 'home',
      usesTabsRouter: true,
      children: [
        AutoRoute(
          page: CalendarTab,
          path: 'calendar',
          name: kCalendar,
        ),
        AutoRoute(
          page: RoomsTab,
          path: 'rooms',
          name: kRooms,
        ),
        AutoRoute(
          page: ProfileTab,
          path: 'profile',
          name: kProfile,
        ),
      ],
    ),
    AutoRoute(
      page: CreateRoomPage,
      path: 'create',
      fullscreenDialog: true,
    ),
  ],
)
class $AppRouter {}
