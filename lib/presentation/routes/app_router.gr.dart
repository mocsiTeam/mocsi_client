// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i11;

import '../../domain/rooms/room.dart' as _i12;
import '../calendar/calendar_tab.dart' as _i8;
import '../conference/conference_page.dart' as _i7;
import '../home/home_page.dart' as _i5;
import '../profile/profile_tab.dart' as _i10;
import '../registration/registration_page.dart' as _i4;
import '../rooms/create_room_page.dart' as _i6;
import '../rooms/rooms_tab.dart' as _i9;
import '../sign_in/sign_in_page.dart' as _i3;
import '../splash/splash_page.dart' as _i2;

class AppRouter extends _i1.RootStackRouter {
  AppRouter();

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashPageRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i2.SplashPage());
    },
    SignInPageRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i3.SignInPage());
    },
    RegistrationPageRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i4.RegistrationPage());
    },
    HomePageRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i5.HomePage());
    },
    CreateRoomPageRoute.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry, child: _i6.CreateRoomPage(), fullscreenDialog: true);
    },
    ConferencePageRoute.name: (entry) {
      var args = entry.routeData.argsAs<ConferencePageRouteArgs>();
      return _i1.MaterialPageX(
          entry: entry,
          child: _i7.ConferencePage(
              key: args.key, conferenceRoom: args.conferenceRoom),
          fullscreenDialog: true);
    },
    Calendar.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i8.CalendarTab());
    },
    Rooms.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i9.RoomsTab());
    },
    Profile.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i10.ProfileTab());
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashPageRoute.name, path: '/'),
        _i1.RouteConfig(SignInPageRoute.name, path: '/sign-in-page'),
        _i1.RouteConfig(RegistrationPageRoute.name, path: '/registration-page'),
        _i1.RouteConfig(HomePageRoute.name,
            path: 'home',
            usesTabsRouter: true,
            children: [
              _i1.RouteConfig(Calendar.name, path: 'calendar'),
              _i1.RouteConfig(Rooms.name, path: 'rooms'),
              _i1.RouteConfig(Profile.name, path: 'profile')
            ]),
        _i1.RouteConfig(CreateRoomPageRoute.name, path: 'create'),
        _i1.RouteConfig(ConferencePageRoute.name, path: 'conference')
      ];
}

class SplashPageRoute extends _i1.PageRouteInfo {
  const SplashPageRoute() : super(name, path: '/');

  static const String name = 'SplashPageRoute';
}

class SignInPageRoute extends _i1.PageRouteInfo {
  const SignInPageRoute() : super(name, path: '/sign-in-page');

  static const String name = 'SignInPageRoute';
}

class RegistrationPageRoute extends _i1.PageRouteInfo {
  const RegistrationPageRoute() : super(name, path: '/registration-page');

  static const String name = 'RegistrationPageRoute';
}

class HomePageRoute extends _i1.PageRouteInfo {
  const HomePageRoute({List<_i1.PageRouteInfo>? children})
      : super(name, path: 'home', initialChildren: children);

  static const String name = 'HomePageRoute';
}

class CreateRoomPageRoute extends _i1.PageRouteInfo {
  const CreateRoomPageRoute() : super(name, path: 'create');

  static const String name = 'CreateRoomPageRoute';
}

class ConferencePageRoute extends _i1.PageRouteInfo<ConferencePageRouteArgs> {
  ConferencePageRoute({_i11.Key? key, required _i12.Room conferenceRoom})
      : super(name,
            path: 'conference',
            args: ConferencePageRouteArgs(
                key: key, conferenceRoom: conferenceRoom));

  static const String name = 'ConferencePageRoute';
}

class ConferencePageRouteArgs {
  const ConferencePageRouteArgs({this.key, required this.conferenceRoom});

  final _i11.Key? key;

  final _i12.Room conferenceRoom;
}

class Calendar extends _i1.PageRouteInfo {
  const Calendar() : super(name, path: 'calendar');

  static const String name = 'Calendar';
}

class Rooms extends _i1.PageRouteInfo {
  const Rooms() : super(name, path: 'rooms');

  static const String name = 'Rooms';
}

class Profile extends _i1.PageRouteInfo {
  const Profile() : super(name, path: 'profile');

  static const String name = 'Profile';
}
