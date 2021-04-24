// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:artemis/artemis.dart' as _i3;
import 'package:connectivity/connectivity.dart' as _i4;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i6;
import 'package:shared_preferences/shared_preferences.dart' as _i7;

import '../application/auth/auth_bloc.dart' as _i17;
import '../application/auth/registration_form/registration_form_bloc.dart'
    as _i14;
import '../application/auth/sign_in_form/sign_in_form_bloc.dart' as _i15;
import '../application/conference/conference_bloc.dart' as _i18;
import '../application/rooms/active_rooms/active_rooms_bloc.dart' as _i16;
import '../application/rooms/create_room_form/create_room_form_bloc.dart'
    as _i19;
import '../domain/auth/i_auth_facade.dart' as _i8;
import '../domain/conference/i_conference_facade.dart' as _i10;
import '../domain/rooms/i_rooms_repository.dart' as _i12;
import '../infrastructure/auth/api_auth_facade.dart' as _i9;
import '../infrastructure/conference/conference_facade.dart' as _i11;
import '../infrastructure/core/api_injectable_module.dart' as _i20;
import '../infrastructure/core/storage_injectable_module.dart' as _i21;
import '../infrastructure/rooms/rooms_repository.dart' as _i13;
import 'core/logging/logger_service.dart'
    as _i22; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final apiInjectableModule = _$ApiInjectableModule();
  final storageInjectableModule = _$StorageInjectableModule();
  final loggerService = _$LoggerService();
  gh.factoryParam<_i3.ArtemisClient, String?, dynamic>(
      (accessToken, _) => apiInjectableModule.getClient(accessToken));
  gh.factory<_i4.Connectivity>(() => apiInjectableModule.connectivity);
  gh.factory<_i5.FlutterSecureStorage>(() => storageInjectableModule.storage);
  gh.factory<_i6.Logger>(() => loggerService.logger);
  await gh.factoryAsync<_i7.SharedPreferences>(
      () => storageInjectableModule.prefs,
      preResolve: true);
  gh.lazySingleton<_i8.IAuthFacade>(() => _i9.ApiAuthFacade(
      get<_i5.FlutterSecureStorage>(),
      get<_i6.Logger>(),
      get<_i4.Connectivity>()));
  gh.lazySingleton<_i10.IConferenceFacade>(
      () => _i11.ConferenceFacade(get<_i6.Logger>()));
  gh.lazySingleton<_i12.IRoomsRepository>(
      () => _i13.RoomsRepository(get<_i6.Logger>()));
  gh.factory<_i14.RegistrationFormBloc>(() =>
      _i14.RegistrationFormBloc(get<_i8.IAuthFacade>(), get<_i6.Logger>()));
  gh.factory<_i15.SignInFormBloc>(
      () => _i15.SignInFormBloc(get<_i8.IAuthFacade>(), get<_i6.Logger>()));
  gh.factory<_i16.ActiveRoomsBloc>(() => _i16.ActiveRoomsBloc(
      get<_i8.IAuthFacade>(), get<_i12.IRoomsRepository>(), get<_i6.Logger>()));
  gh.factory<_i17.AuthBloc>(
      () => _i17.AuthBloc(get<_i8.IAuthFacade>(), get<_i6.Logger>()));
  gh.factory<_i18.ConferenceBloc>(() => _i18.ConferenceBloc(get<_i6.Logger>(),
      get<_i8.IAuthFacade>(), get<_i10.IConferenceFacade>()));
  gh.factory<_i19.CreateRoomFormBloc>(() => _i19.CreateRoomFormBloc(
      get<_i8.IAuthFacade>(), get<_i12.IRoomsRepository>(), get<_i6.Logger>()));
  return get;
}

class _$ApiInjectableModule extends _i20.ApiInjectableModule {}

class _$StorageInjectableModule extends _i21.StorageInjectableModule {}

class _$LoggerService extends _i22.LoggerService {}
