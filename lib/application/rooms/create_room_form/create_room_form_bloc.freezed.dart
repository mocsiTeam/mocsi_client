// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'create_room_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CreateRoomFormEventTearOff {
  const _$CreateRoomFormEventTearOff();

  _NameChanged nameChanged(String nameStr) {
    return _NameChanged(
      nameStr,
    );
  }

  _PasswordChanged passwordChanged(String passwordStr) {
    return _PasswordChanged(
      passwordStr,
    );
  }

  _CreateRoomPressed createRoomPressed() {
    return const _CreateRoomPressed();
  }
}

/// @nodoc
const $CreateRoomFormEvent = _$CreateRoomFormEventTearOff();

/// @nodoc
mixin _$CreateRoomFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() createRoomPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? createRoomPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_CreateRoomPressed value) createRoomPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_CreateRoomPressed value)? createRoomPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateRoomFormEventCopyWith<$Res> {
  factory $CreateRoomFormEventCopyWith(
          CreateRoomFormEvent value, $Res Function(CreateRoomFormEvent) then) =
      _$CreateRoomFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateRoomFormEventCopyWithImpl<$Res>
    implements $CreateRoomFormEventCopyWith<$Res> {
  _$CreateRoomFormEventCopyWithImpl(this._value, this._then);

  final CreateRoomFormEvent _value;
  // ignore: unused_field
  final $Res Function(CreateRoomFormEvent) _then;
}

/// @nodoc
abstract class _$NameChangedCopyWith<$Res> {
  factory _$NameChangedCopyWith(
          _NameChanged value, $Res Function(_NameChanged) then) =
      __$NameChangedCopyWithImpl<$Res>;
  $Res call({String nameStr});
}

/// @nodoc
class __$NameChangedCopyWithImpl<$Res>
    extends _$CreateRoomFormEventCopyWithImpl<$Res>
    implements _$NameChangedCopyWith<$Res> {
  __$NameChangedCopyWithImpl(
      _NameChanged _value, $Res Function(_NameChanged) _then)
      : super(_value, (v) => _then(v as _NameChanged));

  @override
  _NameChanged get _value => super._value as _NameChanged;

  @override
  $Res call({
    Object? nameStr = freezed,
  }) {
    return _then(_NameChanged(
      nameStr == freezed
          ? _value.nameStr
          : nameStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_NameChanged implements _NameChanged {
  const _$_NameChanged(this.nameStr);

  @override
  final String nameStr;

  @override
  String toString() {
    return 'CreateRoomFormEvent.nameChanged(nameStr: $nameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NameChanged &&
            (identical(other.nameStr, nameStr) ||
                const DeepCollectionEquality().equals(other.nameStr, nameStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(nameStr);

  @JsonKey(ignore: true)
  @override
  _$NameChangedCopyWith<_NameChanged> get copyWith =>
      __$NameChangedCopyWithImpl<_NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() createRoomPressed,
  }) {
    return nameChanged(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? createRoomPressed,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(nameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_CreateRoomPressed value) createRoomPressed,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_CreateRoomPressed value)? createRoomPressed,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements CreateRoomFormEvent {
  const factory _NameChanged(String nameStr) = _$_NameChanged;

  String get nameStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$NameChangedCopyWith<_NameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PasswordChangedCopyWith<$Res> {
  factory _$PasswordChangedCopyWith(
          _PasswordChanged value, $Res Function(_PasswordChanged) then) =
      __$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String passwordStr});
}

/// @nodoc
class __$PasswordChangedCopyWithImpl<$Res>
    extends _$CreateRoomFormEventCopyWithImpl<$Res>
    implements _$PasswordChangedCopyWith<$Res> {
  __$PasswordChangedCopyWithImpl(
      _PasswordChanged _value, $Res Function(_PasswordChanged) _then)
      : super(_value, (v) => _then(v as _PasswordChanged));

  @override
  _PasswordChanged get _value => super._value as _PasswordChanged;

  @override
  $Res call({
    Object? passwordStr = freezed,
  }) {
    return _then(_PasswordChanged(
      passwordStr == freezed
          ? _value.passwordStr
          : passwordStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_PasswordChanged implements _PasswordChanged {
  const _$_PasswordChanged(this.passwordStr);

  @override
  final String passwordStr;

  @override
  String toString() {
    return 'CreateRoomFormEvent.passwordChanged(passwordStr: $passwordStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PasswordChanged &&
            (identical(other.passwordStr, passwordStr) ||
                const DeepCollectionEquality()
                    .equals(other.passwordStr, passwordStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(passwordStr);

  @JsonKey(ignore: true)
  @override
  _$PasswordChangedCopyWith<_PasswordChanged> get copyWith =>
      __$PasswordChangedCopyWithImpl<_PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() createRoomPressed,
  }) {
    return passwordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? createRoomPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_CreateRoomPressed value) createRoomPressed,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_CreateRoomPressed value)? createRoomPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChanged implements CreateRoomFormEvent {
  const factory _PasswordChanged(String passwordStr) = _$_PasswordChanged;

  String get passwordStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PasswordChangedCopyWith<_PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CreateRoomPressedCopyWith<$Res> {
  factory _$CreateRoomPressedCopyWith(
          _CreateRoomPressed value, $Res Function(_CreateRoomPressed) then) =
      __$CreateRoomPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$CreateRoomPressedCopyWithImpl<$Res>
    extends _$CreateRoomFormEventCopyWithImpl<$Res>
    implements _$CreateRoomPressedCopyWith<$Res> {
  __$CreateRoomPressedCopyWithImpl(
      _CreateRoomPressed _value, $Res Function(_CreateRoomPressed) _then)
      : super(_value, (v) => _then(v as _CreateRoomPressed));

  @override
  _CreateRoomPressed get _value => super._value as _CreateRoomPressed;
}

/// @nodoc
class _$_CreateRoomPressed implements _CreateRoomPressed {
  const _$_CreateRoomPressed();

  @override
  String toString() {
    return 'CreateRoomFormEvent.createRoomPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CreateRoomPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() createRoomPressed,
  }) {
    return createRoomPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? createRoomPressed,
    required TResult orElse(),
  }) {
    if (createRoomPressed != null) {
      return createRoomPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_CreateRoomPressed value) createRoomPressed,
  }) {
    return createRoomPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_CreateRoomPressed value)? createRoomPressed,
    required TResult orElse(),
  }) {
    if (createRoomPressed != null) {
      return createRoomPressed(this);
    }
    return orElse();
  }
}

abstract class _CreateRoomPressed implements CreateRoomFormEvent {
  const factory _CreateRoomPressed() = _$_CreateRoomPressed;
}

/// @nodoc
class _$CreateRoomFormStateTearOff {
  const _$CreateRoomFormStateTearOff();

  _CreateRoomFormState call(
      {required Name name,
      required Password password,
      required AutovalidateMode showErrorMessages,
      required bool isSubmitting,
      required Option<Either<RoomsFailure, Unit>>
          createRoomFailureOrSuccessOption}) {
    return _CreateRoomFormState(
      name: name,
      password: password,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      createRoomFailureOrSuccessOption: createRoomFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $CreateRoomFormState = _$CreateRoomFormStateTearOff();

/// @nodoc
mixin _$CreateRoomFormState {
  Name get name => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  AutovalidateMode get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<RoomsFailure, Unit>> get createRoomFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateRoomFormStateCopyWith<CreateRoomFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateRoomFormStateCopyWith<$Res> {
  factory $CreateRoomFormStateCopyWith(
          CreateRoomFormState value, $Res Function(CreateRoomFormState) then) =
      _$CreateRoomFormStateCopyWithImpl<$Res>;
  $Res call(
      {Name name,
      Password password,
      AutovalidateMode showErrorMessages,
      bool isSubmitting,
      Option<Either<RoomsFailure, Unit>> createRoomFailureOrSuccessOption});
}

/// @nodoc
class _$CreateRoomFormStateCopyWithImpl<$Res>
    implements $CreateRoomFormStateCopyWith<$Res> {
  _$CreateRoomFormStateCopyWithImpl(this._value, this._then);

  final CreateRoomFormState _value;
  // ignore: unused_field
  final $Res Function(CreateRoomFormState) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? password = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? createRoomFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      createRoomFailureOrSuccessOption: createRoomFailureOrSuccessOption ==
              freezed
          ? _value.createRoomFailureOrSuccessOption
          : createRoomFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<RoomsFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$CreateRoomFormStateCopyWith<$Res>
    implements $CreateRoomFormStateCopyWith<$Res> {
  factory _$CreateRoomFormStateCopyWith(_CreateRoomFormState value,
          $Res Function(_CreateRoomFormState) then) =
      __$CreateRoomFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Name name,
      Password password,
      AutovalidateMode showErrorMessages,
      bool isSubmitting,
      Option<Either<RoomsFailure, Unit>> createRoomFailureOrSuccessOption});
}

/// @nodoc
class __$CreateRoomFormStateCopyWithImpl<$Res>
    extends _$CreateRoomFormStateCopyWithImpl<$Res>
    implements _$CreateRoomFormStateCopyWith<$Res> {
  __$CreateRoomFormStateCopyWithImpl(
      _CreateRoomFormState _value, $Res Function(_CreateRoomFormState) _then)
      : super(_value, (v) => _then(v as _CreateRoomFormState));

  @override
  _CreateRoomFormState get _value => super._value as _CreateRoomFormState;

  @override
  $Res call({
    Object? name = freezed,
    Object? password = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? createRoomFailureOrSuccessOption = freezed,
  }) {
    return _then(_CreateRoomFormState(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      createRoomFailureOrSuccessOption: createRoomFailureOrSuccessOption ==
              freezed
          ? _value.createRoomFailureOrSuccessOption
          : createRoomFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<RoomsFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_CreateRoomFormState implements _CreateRoomFormState {
  const _$_CreateRoomFormState(
      {required this.name,
      required this.password,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.createRoomFailureOrSuccessOption});

  @override
  final Name name;
  @override
  final Password password;
  @override
  final AutovalidateMode showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<RoomsFailure, Unit>> createRoomFailureOrSuccessOption;

  @override
  String toString() {
    return 'CreateRoomFormState(name: $name, password: $password, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, createRoomFailureOrSuccessOption: $createRoomFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateRoomFormState &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.createRoomFailureOrSuccessOption,
                    createRoomFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.createRoomFailureOrSuccessOption,
                    createRoomFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(createRoomFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$CreateRoomFormStateCopyWith<_CreateRoomFormState> get copyWith =>
      __$CreateRoomFormStateCopyWithImpl<_CreateRoomFormState>(
          this, _$identity);
}

abstract class _CreateRoomFormState implements CreateRoomFormState {
  const factory _CreateRoomFormState(
      {required Name name,
      required Password password,
      required AutovalidateMode showErrorMessages,
      required bool isSubmitting,
      required Option<Either<RoomsFailure, Unit>>
          createRoomFailureOrSuccessOption}) = _$_CreateRoomFormState;

  @override
  Name get name => throw _privateConstructorUsedError;
  @override
  Password get password => throw _privateConstructorUsedError;
  @override
  AutovalidateMode get showErrorMessages => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  Option<Either<RoomsFailure, Unit>> get createRoomFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CreateRoomFormStateCopyWith<_CreateRoomFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
