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

  NameChanged nameChanged(String nameStr) {
    return NameChanged(
      nameStr,
    );
  }

  PasswordChanged passwordChanged(String passwordStr) {
    return PasswordChanged(
      passwordStr,
    );
  }

  CreateRoomPressed createRoomPressed() {
    return const CreateRoomPressed();
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
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(CreateRoomPressed value) createRoomPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(CreateRoomPressed value)? createRoomPressed,
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
abstract class $NameChangedCopyWith<$Res> {
  factory $NameChangedCopyWith(
          NameChanged value, $Res Function(NameChanged) then) =
      _$NameChangedCopyWithImpl<$Res>;
  $Res call({String nameStr});
}

/// @nodoc
class _$NameChangedCopyWithImpl<$Res>
    extends _$CreateRoomFormEventCopyWithImpl<$Res>
    implements $NameChangedCopyWith<$Res> {
  _$NameChangedCopyWithImpl(
      NameChanged _value, $Res Function(NameChanged) _then)
      : super(_value, (v) => _then(v as NameChanged));

  @override
  NameChanged get _value => super._value as NameChanged;

  @override
  $Res call({
    Object? nameStr = freezed,
  }) {
    return _then(NameChanged(
      nameStr == freezed
          ? _value.nameStr
          : nameStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$NameChanged implements NameChanged {
  const _$NameChanged(this.nameStr);

  @override
  final String nameStr;

  @override
  String toString() {
    return 'CreateRoomFormEvent.nameChanged(nameStr: $nameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NameChanged &&
            (identical(other.nameStr, nameStr) ||
                const DeepCollectionEquality().equals(other.nameStr, nameStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(nameStr);

  @JsonKey(ignore: true)
  @override
  $NameChangedCopyWith<NameChanged> get copyWith =>
      _$NameChangedCopyWithImpl<NameChanged>(this, _$identity);

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
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(CreateRoomPressed value) createRoomPressed,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(CreateRoomPressed value)? createRoomPressed,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class NameChanged implements CreateRoomFormEvent {
  const factory NameChanged(String nameStr) = _$NameChanged;

  String get nameStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NameChangedCopyWith<NameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
          PasswordChanged value, $Res Function(PasswordChanged) then) =
      _$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String passwordStr});
}

/// @nodoc
class _$PasswordChangedCopyWithImpl<$Res>
    extends _$CreateRoomFormEventCopyWithImpl<$Res>
    implements $PasswordChangedCopyWith<$Res> {
  _$PasswordChangedCopyWithImpl(
      PasswordChanged _value, $Res Function(PasswordChanged) _then)
      : super(_value, (v) => _then(v as PasswordChanged));

  @override
  PasswordChanged get _value => super._value as PasswordChanged;

  @override
  $Res call({
    Object? passwordStr = freezed,
  }) {
    return _then(PasswordChanged(
      passwordStr == freezed
          ? _value.passwordStr
          : passwordStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged(this.passwordStr);

  @override
  final String passwordStr;

  @override
  String toString() {
    return 'CreateRoomFormEvent.passwordChanged(passwordStr: $passwordStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PasswordChanged &&
            (identical(other.passwordStr, passwordStr) ||
                const DeepCollectionEquality()
                    .equals(other.passwordStr, passwordStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(passwordStr);

  @JsonKey(ignore: true)
  @override
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      _$PasswordChangedCopyWithImpl<PasswordChanged>(this, _$identity);

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
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(CreateRoomPressed value) createRoomPressed,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(CreateRoomPressed value)? createRoomPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements CreateRoomFormEvent {
  const factory PasswordChanged(String passwordStr) = _$PasswordChanged;

  String get passwordStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateRoomPressedCopyWith<$Res> {
  factory $CreateRoomPressedCopyWith(
          CreateRoomPressed value, $Res Function(CreateRoomPressed) then) =
      _$CreateRoomPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateRoomPressedCopyWithImpl<$Res>
    extends _$CreateRoomFormEventCopyWithImpl<$Res>
    implements $CreateRoomPressedCopyWith<$Res> {
  _$CreateRoomPressedCopyWithImpl(
      CreateRoomPressed _value, $Res Function(CreateRoomPressed) _then)
      : super(_value, (v) => _then(v as CreateRoomPressed));

  @override
  CreateRoomPressed get _value => super._value as CreateRoomPressed;
}

/// @nodoc
class _$CreateRoomPressed implements CreateRoomPressed {
  const _$CreateRoomPressed();

  @override
  String toString() {
    return 'CreateRoomFormEvent.createRoomPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CreateRoomPressed);
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
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(CreateRoomPressed value) createRoomPressed,
  }) {
    return createRoomPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(CreateRoomPressed value)? createRoomPressed,
    required TResult orElse(),
  }) {
    if (createRoomPressed != null) {
      return createRoomPressed(this);
    }
    return orElse();
  }
}

abstract class CreateRoomPressed implements CreateRoomFormEvent {
  const factory CreateRoomPressed() = _$CreateRoomPressed;
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
