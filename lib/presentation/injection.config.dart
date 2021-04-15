// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:artemis/artemis.dart' as _i3;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;

import '../application/authentication/auth_bloc.dart' as _i11;
import '../application/authentication/sign_in_form/sign_in_form_bloc.dart'
    as _i10;
import '../domain/auth/authentication/i_auth_facade.dart' as _i6;
import '../domain/auth/authorization/i_authorization_facade.dart' as _i8;
import '../infrastructure/auth/authentication/firebase_auth_facade.dart' as _i7;
import '../infrastructure/auth/authorization/api_authorization_facade.dart'
    as _i9;
import '../infrastructure/core/api_injectable_module.dart' as _i12;
import '../infrastructure/core/firebase_injectable_module.dart'
    as _i13; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final apiInjectableModule = _$ApiInjectableModule();
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.factory<_i3.ArtemisClient>(() => apiInjectableModule.client);
  gh.lazySingleton<_i4.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i5.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i6.IAuthFacade>(() =>
      _i7.FirebaseAuthFacade(get<_i4.FirebaseAuth>(), get<_i5.GoogleSignIn>()));
  gh.lazySingleton<_i8.IAuthorizationFacade>(
      () => _i9.ApiAuthorizationFacade(get<_i3.ArtemisClient>()));
  gh.factory<_i10.SignInFormBloc>(
      () => _i10.SignInFormBloc(get<_i6.IAuthFacade>()));
  gh.factory<_i11.AuthBloc>(() => _i11.AuthBloc(get<_i6.IAuthFacade>()));
  return get;
}

class _$ApiInjectableModule extends _i12.ApiInjectableModule {}

class _$FirebaseInjectableModule extends _i13.FirebaseInjectableModule {}
