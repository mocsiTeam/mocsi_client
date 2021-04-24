// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'conference_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ConferenceUserTearOff {
  const _$ConferenceUserTearOff();

  _ConferenceUser call(
      {required FirstName firstName,
      required LastName lastName,
      required EmailAddress emailAddress}) {
    return _ConferenceUser(
      firstName: firstName,
      lastName: lastName,
      emailAddress: emailAddress,
    );
  }
}

/// @nodoc
const $ConferenceUser = _$ConferenceUserTearOff();

/// @nodoc
mixin _$ConferenceUser {
  FirstName get firstName => throw _privateConstructorUsedError;
  LastName get lastName => throw _privateConstructorUsedError;
  EmailAddress get emailAddress => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConferenceUserCopyWith<ConferenceUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConferenceUserCopyWith<$Res> {
  factory $ConferenceUserCopyWith(
          ConferenceUser value, $Res Function(ConferenceUser) then) =
      _$ConferenceUserCopyWithImpl<$Res>;
  $Res call(
      {FirstName firstName, LastName lastName, EmailAddress emailAddress});
}

/// @nodoc
class _$ConferenceUserCopyWithImpl<$Res>
    implements $ConferenceUserCopyWith<$Res> {
  _$ConferenceUserCopyWithImpl(this._value, this._then);

  final ConferenceUser _value;
  // ignore: unused_field
  final $Res Function(ConferenceUser) _then;

  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? emailAddress = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as FirstName,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as LastName,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
    ));
  }
}

/// @nodoc
abstract class _$ConferenceUserCopyWith<$Res>
    implements $ConferenceUserCopyWith<$Res> {
  factory _$ConferenceUserCopyWith(
          _ConferenceUser value, $Res Function(_ConferenceUser) then) =
      __$ConferenceUserCopyWithImpl<$Res>;
  @override
  $Res call(
      {FirstName firstName, LastName lastName, EmailAddress emailAddress});
}

/// @nodoc
class __$ConferenceUserCopyWithImpl<$Res>
    extends _$ConferenceUserCopyWithImpl<$Res>
    implements _$ConferenceUserCopyWith<$Res> {
  __$ConferenceUserCopyWithImpl(
      _ConferenceUser _value, $Res Function(_ConferenceUser) _then)
      : super(_value, (v) => _then(v as _ConferenceUser));

  @override
  _ConferenceUser get _value => super._value as _ConferenceUser;

  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? emailAddress = freezed,
  }) {
    return _then(_ConferenceUser(
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as FirstName,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as LastName,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
    ));
  }
}

/// @nodoc
class _$_ConferenceUser extends _ConferenceUser {
  const _$_ConferenceUser(
      {required this.firstName,
      required this.lastName,
      required this.emailAddress})
      : super._();

  @override
  final FirstName firstName;
  @override
  final LastName lastName;
  @override
  final EmailAddress emailAddress;

  @override
  String toString() {
    return 'ConferenceUser(firstName: $firstName, lastName: $lastName, emailAddress: $emailAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ConferenceUser &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(emailAddress);

  @JsonKey(ignore: true)
  @override
  _$ConferenceUserCopyWith<_ConferenceUser> get copyWith =>
      __$ConferenceUserCopyWithImpl<_ConferenceUser>(this, _$identity);
}

abstract class _ConferenceUser extends ConferenceUser {
  const factory _ConferenceUser(
      {required FirstName firstName,
      required LastName lastName,
      required EmailAddress emailAddress}) = _$_ConferenceUser;
  const _ConferenceUser._() : super._();

  @override
  FirstName get firstName => throw _privateConstructorUsedError;
  @override
  LastName get lastName => throw _privateConstructorUsedError;
  @override
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ConferenceUserCopyWith<_ConferenceUser> get copyWith =>
      throw _privateConstructorUsedError;
}
