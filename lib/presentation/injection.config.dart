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

import '../application/auth/auth_bloc.dart' as _i12;
import '../application/auth/registration_form/registration_form_bloc.dart'
    as _i10;
import '../application/auth/sign_in_form/sign_in_form_bloc.dart' as _i11;
import '../domain/auth/i_auth_facade.dart' as _i8;
import '../infrastructure/auth/api_auth_facade.dart' as _i9;
import '../infrastructure/core/api_injectable_module.dart' as _i13;
import '../infrastructure/core/storage_injectable_module.dart' as _i14;
import 'core/logging/logger_service.dart'
    as _i15; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i10.RegistrationFormBloc>(() =>
      _i10.RegistrationFormBloc(get<_i8.IAuthFacade>(), get<_i6.Logger>()));
  gh.factory<_i11.SignInFormBloc>(
      () => _i11.SignInFormBloc(get<_i8.IAuthFacade>(), get<_i6.Logger>()));
  gh.factory<_i12.AuthBloc>(
      () => _i12.AuthBloc(get<_i8.IAuthFacade>(), get<_i6.Logger>()));
  return get;
}

class _$ApiInjectableModule extends _i13.ApiInjectableModule {}

class _$StorageInjectableModule extends _i14.StorageInjectableModule {}

class _$LoggerService extends _i15.LoggerService {}
