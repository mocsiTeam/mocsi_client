// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'authorization_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthorizationFailureTearOff {
  const _$AuthorizationFailureTearOff();

  UserDoesNotExist userDoesNotExist() {
    return const UserDoesNotExist();
  }

  UnexpectedError unexpectedError() {
    return const UnexpectedError();
  }
}

/// @nodoc
const $AuthorizationFailure = _$AuthorizationFailureTearOff();

/// @nodoc
mixin _$AuthorizationFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() userDoesNotExist,
    required TResult Function() unexpectedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? userDoesNotExist,
    TResult Function()? unexpectedError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserDoesNotExist value) userDoesNotExist,
    required TResult Function(UnexpectedError value) unexpectedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserDoesNotExist value)? userDoesNotExist,
    TResult Function(UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorizationFailureCopyWith<$Res> {
  factory $AuthorizationFailureCopyWith(AuthorizationFailure value,
          $Res Function(AuthorizationFailure) then) =
      _$AuthorizationFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthorizationFailureCopyWithImpl<$Res>
    implements $AuthorizationFailureCopyWith<$Res> {
  _$AuthorizationFailureCopyWithImpl(this._value, this._then);

  final AuthorizationFailure _value;
  // ignore: unused_field
  final $Res Function(AuthorizationFailure) _then;
}

/// @nodoc
abstract class $UserDoesNotExistCopyWith<$Res> {
  factory $UserDoesNotExistCopyWith(
          UserDoesNotExist value, $Res Function(UserDoesNotExist) then) =
      _$UserDoesNotExistCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserDoesNotExistCopyWithImpl<$Res>
    extends _$AuthorizationFailureCopyWithImpl<$Res>
    implements $UserDoesNotExistCopyWith<$Res> {
  _$UserDoesNotExistCopyWithImpl(
      UserDoesNotExist _value, $Res Function(UserDoesNotExist) _then)
      : super(_value, (v) => _then(v as UserDoesNotExist));

  @override
  UserDoesNotExist get _value => super._value as UserDoesNotExist;
}

/// @nodoc
class _$UserDoesNotExist implements UserDoesNotExist {
  const _$UserDoesNotExist();

  @override
  String toString() {
    return 'AuthorizationFailure.userDoesNotExist()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UserDoesNotExist);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() userDoesNotExist,
    required TResult Function() unexpectedError,
  }) {
    return userDoesNotExist();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? userDoesNotExist,
    TResult Function()? unexpectedError,
    required TResult orElse(),
  }) {
    if (userDoesNotExist != null) {
      return userDoesNotExist();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserDoesNotExist value) userDoesNotExist,
    required TResult Function(UnexpectedError value) unexpectedError,
  }) {
    return userDoesNotExist(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserDoesNotExist value)? userDoesNotExist,
    TResult Function(UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) {
    if (userDoesNotExist != null) {
      return userDoesNotExist(this);
    }
    return orElse();
  }
}

abstract class UserDoesNotExist implements AuthorizationFailure {
  const factory UserDoesNotExist() = _$UserDoesNotExist;
}

/// @nodoc
abstract class $UnexpectedErrorCopyWith<$Res> {
  factory $UnexpectedErrorCopyWith(
          UnexpectedError value, $Res Function(UnexpectedError) then) =
      _$UnexpectedErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnexpectedErrorCopyWithImpl<$Res>
    extends _$AuthorizationFailureCopyWithImpl<$Res>
    implements $UnexpectedErrorCopyWith<$Res> {
  _$UnexpectedErrorCopyWithImpl(
      UnexpectedError _value, $Res Function(UnexpectedError) _then)
      : super(_value, (v) => _then(v as UnexpectedError));

  @override
  UnexpectedError get _value => super._value as UnexpectedError;
}

/// @nodoc
class _$UnexpectedError implements UnexpectedError {
  const _$UnexpectedError();

  @override
  String toString() {
    return 'AuthorizationFailure.unexpectedError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UnexpectedError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() userDoesNotExist,
    required TResult Function() unexpectedError,
  }) {
    return unexpectedError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? userDoesNotExist,
    TResult Function()? unexpectedError,
    required TResult orElse(),
  }) {
    if (unexpectedError != null) {
      return unexpectedError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserDoesNotExist value) userDoesNotExist,
    required TResult Function(UnexpectedError value) unexpectedError,
  }) {
    return unexpectedError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserDoesNotExist value)? userDoesNotExist,
    TResult Function(UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) {
    if (unexpectedError != null) {
      return unexpectedError(this);
    }
    return orElse();
  }
}

abstract class UnexpectedError implements AuthorizationFailure {
  const factory UnexpectedError() = _$UnexpectedError;
}
