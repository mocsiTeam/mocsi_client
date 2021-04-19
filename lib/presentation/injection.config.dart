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

import '../application/auth/auth_bloc.dart' as _i14;
import '../application/auth/registration_form/registration_form_bloc.dart'
    as _i12;
import '../application/auth/sign_in_form/sign_in_form_bloc.dart' as _i13;
import '../application/rooms/create_room_form/create_room_form_bloc.dart'
    as _i15;
import '../domain/auth/i_auth_facade.dart' as _i8;
import '../domain/rooms/i_rooms_repository.dart' as _i10;
import '../infrastructure/auth/api_auth_facade.dart' as _i9;
import '../infrastructure/core/api_injectable_module.dart' as _i16;
import '../infrastructure/core/storage_injectable_module.dart' as _i17;
import '../infrastructure/rooms/rooms_repository.dart' as _i11;
import 'core/logging/logger_service.dart'
    as _i18; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i10.IRoomsRepository>(
      () => _i11.RoomsRepository(get<_i6.Logger>()));
  gh.factory<_i12.RegistrationFormBloc>(() =>
      _i12.RegistrationFormBloc(get<_i8.IAuthFacade>(), get<_i6.Logger>()));
  gh.factory<_i13.SignInFormBloc>(
      () => _i13.SignInFormBloc(get<_i8.IAuthFacade>(), get<_i6.Logger>()));
  gh.factory<_i14.AuthBloc>(
      () => _i14.AuthBloc(get<_i8.IAuthFacade>(), get<_i6.Logger>()));
  gh.factory<_i15.CreateRoomFormBloc>(() => _i15.CreateRoomFormBloc(
      get<_i8.IAuthFacade>(), get<_i10.IRoomsRepository>(), get<_i6.Logger>()));
  return get;
}

class _$ApiInjectableModule extends _i16.ApiInjectableModule {}

class _$StorageInjectableModule extends _i17.StorageInjectableModule {}

class _$LoggerService extends _i18.LoggerService {}
