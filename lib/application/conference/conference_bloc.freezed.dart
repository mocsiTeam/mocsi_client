// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'conference_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ConferenceEventTearOff {
  const _$ConferenceEventTearOff();

  ConferenceOpened conferenceOpened(Room room) {
    return ConferenceOpened(
      room,
    );
  }

  ConferenceLeft conferenceLeft() {
    return const ConferenceLeft();
  }
}

/// @nodoc
const $ConferenceEvent = _$ConferenceEventTearOff();

/// @nodoc
mixin _$ConferenceEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Room room) conferenceOpened,
    required TResult Function() conferenceLeft,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Room room)? conferenceOpened,
    TResult Function()? conferenceLeft,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConferenceOpened value) conferenceOpened,
    required TResult Function(ConferenceLeft value) conferenceLeft,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConferenceOpened value)? conferenceOpened,
    TResult Function(ConferenceLeft value)? conferenceLeft,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConferenceEventCopyWith<$Res> {
  factory $ConferenceEventCopyWith(
          ConferenceEvent value, $Res Function(ConferenceEvent) then) =
      _$ConferenceEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConferenceEventCopyWithImpl<$Res>
    implements $ConferenceEventCopyWith<$Res> {
  _$ConferenceEventCopyWithImpl(this._value, this._then);

  final ConferenceEvent _value;
  // ignore: unused_field
  final $Res Function(ConferenceEvent) _then;
}

/// @nodoc
abstract class $ConferenceOpenedCopyWith<$Res> {
  factory $ConferenceOpenedCopyWith(
          ConferenceOpened value, $Res Function(ConferenceOpened) then) =
      _$ConferenceOpenedCopyWithImpl<$Res>;

  $Res call({Room room});

  $RoomCopyWith<$Res> get room;
}

/// @nodoc
class _$ConferenceOpenedCopyWithImpl<$Res>
    extends _$ConferenceEventCopyWithImpl<$Res>
    implements $ConferenceOpenedCopyWith<$Res> {
  _$ConferenceOpenedCopyWithImpl(
      ConferenceOpened _value, $Res Function(ConferenceOpened) _then)
      : super(_value, (v) => _then(v as ConferenceOpened));

  @override
  ConferenceOpened get _value => super._value as ConferenceOpened;

  @override
  $Res call({
    Object? room = freezed,
  }) {
    return _then(ConferenceOpened(
      room == freezed
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as Room,
    ));
  }

  @override
  $RoomCopyWith<$Res> get room {
    return $RoomCopyWith<$Res>(_value.room, (value) {
      return _then(_value.copyWith(room: value));
    });
  }
}

/// @nodoc
class _$ConferenceOpened implements ConferenceOpened {
  const _$ConferenceOpened(this.room);

  @override
  final Room room;

  @override
  String toString() {
    return 'ConferenceEvent.conferenceOpened(room: $room)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ConferenceOpened &&
            (identical(other.room, room) ||
                const DeepCollectionEquality().equals(other.room, room)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(room);

  @JsonKey(ignore: true)
  @override
  $ConferenceOpenedCopyWith<ConferenceOpened> get copyWith =>
      _$ConferenceOpenedCopyWithImpl<ConferenceOpened>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Room room) conferenceOpened,
    required TResult Function() conferenceLeft,
  }) {
    return conferenceOpened(room);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Room room)? conferenceOpened,
    TResult Function()? conferenceLeft,
    required TResult orElse(),
  }) {
    if (conferenceOpened != null) {
      return conferenceOpened(room);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConferenceOpened value) conferenceOpened,
    required TResult Function(ConferenceLeft value) conferenceLeft,
  }) {
    return conferenceOpened(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConferenceOpened value)? conferenceOpened,
    TResult Function(ConferenceLeft value)? conferenceLeft,
    required TResult orElse(),
  }) {
    if (conferenceOpened != null) {
      return conferenceOpened(this);
    }
    return orElse();
  }
}

abstract class ConferenceOpened implements ConferenceEvent {
  const factory ConferenceOpened(Room room) = _$ConferenceOpened;

  Room get room => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConferenceOpenedCopyWith<ConferenceOpened> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConferenceLeftCopyWith<$Res> {
  factory $ConferenceLeftCopyWith(
          ConferenceLeft value, $Res Function(ConferenceLeft) then) =
      _$ConferenceLeftCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConferenceLeftCopyWithImpl<$Res>
    extends _$ConferenceEventCopyWithImpl<$Res>
    implements $ConferenceLeftCopyWith<$Res> {
  _$ConferenceLeftCopyWithImpl(
      ConferenceLeft _value, $Res Function(ConferenceLeft) _then)
      : super(_value, (v) => _then(v as ConferenceLeft));

  @override
  ConferenceLeft get _value => super._value as ConferenceLeft;
}

/// @nodoc
class _$ConferenceLeft implements ConferenceLeft {
  const _$ConferenceLeft();

  @override
  String toString() {
    return 'ConferenceEvent.conferenceLeft()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ConferenceLeft);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Room room) conferenceOpened,
    required TResult Function() conferenceLeft,
  }) {
    return conferenceLeft();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Room room)? conferenceOpened,
    TResult Function()? conferenceLeft,
    required TResult orElse(),
  }) {
    if (conferenceLeft != null) {
      return conferenceLeft();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConferenceOpened value) conferenceOpened,
    required TResult Function(ConferenceLeft value) conferenceLeft,
  }) {
    return conferenceLeft(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConferenceOpened value)? conferenceOpened,
    TResult Function(ConferenceLeft value)? conferenceLeft,
    required TResult orElse(),
  }) {
    if (conferenceLeft != null) {
      return conferenceLeft(this);
    }
    return orElse();
  }
}

abstract class ConferenceLeft implements ConferenceEvent {
  const factory ConferenceLeft() = _$ConferenceLeft;
}

/// @nodoc
class _$ConferenceStateTearOff {
  const _$ConferenceStateTearOff();

  Initial initial() {
    return const Initial();
  }

  ConferenceJoined conferenceJoined(Room room) {
    return ConferenceJoined(
      room,
    );
  }

  ErrorWhileJoining errorWhileJoining() {
    return const ErrorWhileJoining();
  }

  ConferenceLoading conferenceLoading() {
    return const ConferenceLoading();
  }

  ConferenceTerminated conferenceTerminated() {
    return const ConferenceTerminated();
  }
}

/// @nodoc
const $ConferenceState = _$ConferenceStateTearOff();

/// @nodoc
mixin _$ConferenceState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Room room) conferenceJoined,
    required TResult Function() errorWhileJoining,
    required TResult Function() conferenceLoading,
    required TResult Function() conferenceTerminated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Room room)? conferenceJoined,
    TResult Function()? errorWhileJoining,
    TResult Function()? conferenceLoading,
    TResult Function()? conferenceTerminated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ConferenceJoined value) conferenceJoined,
    required TResult Function(ErrorWhileJoining value) errorWhileJoining,
    required TResult Function(ConferenceLoading value) conferenceLoading,
    required TResult Function(ConferenceTerminated value) conferenceTerminated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ConferenceJoined value)? conferenceJoined,
    TResult Function(ErrorWhileJoining value)? errorWhileJoining,
    TResult Function(ConferenceLoading value)? conferenceLoading,
    TResult Function(ConferenceTerminated value)? conferenceTerminated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConferenceStateCopyWith<$Res> {
  factory $ConferenceStateCopyWith(
          ConferenceState value, $Res Function(ConferenceState) then) =
      _$ConferenceStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConferenceStateCopyWithImpl<$Res>
    implements $ConferenceStateCopyWith<$Res> {
  _$ConferenceStateCopyWithImpl(this._value, this._then);

  final ConferenceState _value;
  // ignore: unused_field
  final $Res Function(ConferenceState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$ConferenceStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc
class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'ConferenceState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Room room) conferenceJoined,
    required TResult Function() errorWhileJoining,
    required TResult Function() conferenceLoading,
    required TResult Function() conferenceTerminated,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Room room)? conferenceJoined,
    TResult Function()? errorWhileJoining,
    TResult Function()? conferenceLoading,
    TResult Function()? conferenceTerminated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ConferenceJoined value) conferenceJoined,
    required TResult Function(ErrorWhileJoining value) errorWhileJoining,
    required TResult Function(ConferenceLoading value) conferenceLoading,
    required TResult Function(ConferenceTerminated value) conferenceTerminated,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ConferenceJoined value)? conferenceJoined,
    TResult Function(ErrorWhileJoining value)? errorWhileJoining,
    TResult Function(ConferenceLoading value)? conferenceLoading,
    TResult Function(ConferenceTerminated value)? conferenceTerminated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ConferenceState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $ConferenceJoinedCopyWith<$Res> {
  factory $ConferenceJoinedCopyWith(
          ConferenceJoined value, $Res Function(ConferenceJoined) then) =
      _$ConferenceJoinedCopyWithImpl<$Res>;

  $Res call({Room room});

  $RoomCopyWith<$Res> get room;
}

/// @nodoc
class _$ConferenceJoinedCopyWithImpl<$Res>
    extends _$ConferenceStateCopyWithImpl<$Res>
    implements $ConferenceJoinedCopyWith<$Res> {
  _$ConferenceJoinedCopyWithImpl(
      ConferenceJoined _value, $Res Function(ConferenceJoined) _then)
      : super(_value, (v) => _then(v as ConferenceJoined));

  @override
  ConferenceJoined get _value => super._value as ConferenceJoined;

  @override
  $Res call({
    Object? room = freezed,
  }) {
    return _then(ConferenceJoined(
      room == freezed
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as Room,
    ));
  }

  @override
  $RoomCopyWith<$Res> get room {
    return $RoomCopyWith<$Res>(_value.room, (value) {
      return _then(_value.copyWith(room: value));
    });
  }
}

/// @nodoc
class _$ConferenceJoined implements ConferenceJoined {
  const _$ConferenceJoined(this.room);

  @override
  final Room room;

  @override
  String toString() {
    return 'ConferenceState.conferenceJoined(room: $room)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ConferenceJoined &&
            (identical(other.room, room) ||
                const DeepCollectionEquality().equals(other.room, room)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(room);

  @JsonKey(ignore: true)
  @override
  $ConferenceJoinedCopyWith<ConferenceJoined> get copyWith =>
      _$ConferenceJoinedCopyWithImpl<ConferenceJoined>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Room room) conferenceJoined,
    required TResult Function() errorWhileJoining,
    required TResult Function() conferenceLoading,
    required TResult Function() conferenceTerminated,
  }) {
    return conferenceJoined(room);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Room room)? conferenceJoined,
    TResult Function()? errorWhileJoining,
    TResult Function()? conferenceLoading,
    TResult Function()? conferenceTerminated,
    required TResult orElse(),
  }) {
    if (conferenceJoined != null) {
      return conferenceJoined(room);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ConferenceJoined value) conferenceJoined,
    required TResult Function(ErrorWhileJoining value) errorWhileJoining,
    required TResult Function(ConferenceLoading value) conferenceLoading,
    required TResult Function(ConferenceTerminated value) conferenceTerminated,
  }) {
    return conferenceJoined(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ConferenceJoined value)? conferenceJoined,
    TResult Function(ErrorWhileJoining value)? errorWhileJoining,
    TResult Function(ConferenceLoading value)? conferenceLoading,
    TResult Function(ConferenceTerminated value)? conferenceTerminated,
    required TResult orElse(),
  }) {
    if (conferenceJoined != null) {
      return conferenceJoined(this);
    }
    return orElse();
  }
}

abstract class ConferenceJoined implements ConferenceState {
  const factory ConferenceJoined(Room room) = _$ConferenceJoined;

  Room get room => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConferenceJoinedCopyWith<ConferenceJoined> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorWhileJoiningCopyWith<$Res> {
  factory $ErrorWhileJoiningCopyWith(
          ErrorWhileJoining value, $Res Function(ErrorWhileJoining) then) =
      _$ErrorWhileJoiningCopyWithImpl<$Res>;
}

/// @nodoc
class _$ErrorWhileJoiningCopyWithImpl<$Res>
    extends _$ConferenceStateCopyWithImpl<$Res>
    implements $ErrorWhileJoiningCopyWith<$Res> {
  _$ErrorWhileJoiningCopyWithImpl(
      ErrorWhileJoining _value, $Res Function(ErrorWhileJoining) _then)
      : super(_value, (v) => _then(v as ErrorWhileJoining));

  @override
  ErrorWhileJoining get _value => super._value as ErrorWhileJoining;
}

/// @nodoc
class _$ErrorWhileJoining implements ErrorWhileJoining {
  const _$ErrorWhileJoining();

  @override
  String toString() {
    return 'ConferenceState.errorWhileJoining()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ErrorWhileJoining);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Room room) conferenceJoined,
    required TResult Function() errorWhileJoining,
    required TResult Function() conferenceLoading,
    required TResult Function() conferenceTerminated,
  }) {
    return errorWhileJoining();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Room room)? conferenceJoined,
    TResult Function()? errorWhileJoining,
    TResult Function()? conferenceLoading,
    TResult Function()? conferenceTerminated,
    required TResult orElse(),
  }) {
    if (errorWhileJoining != null) {
      return errorWhileJoining();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ConferenceJoined value) conferenceJoined,
    required TResult Function(ErrorWhileJoining value) errorWhileJoining,
    required TResult Function(ConferenceLoading value) conferenceLoading,
    required TResult Function(ConferenceTerminated value) conferenceTerminated,
  }) {
    return errorWhileJoining(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ConferenceJoined value)? conferenceJoined,
    TResult Function(ErrorWhileJoining value)? errorWhileJoining,
    TResult Function(ConferenceLoading value)? conferenceLoading,
    TResult Function(ConferenceTerminated value)? conferenceTerminated,
    required TResult orElse(),
  }) {
    if (errorWhileJoining != null) {
      return errorWhileJoining(this);
    }
    return orElse();
  }
}

abstract class ErrorWhileJoining implements ConferenceState {
  const factory ErrorWhileJoining() = _$ErrorWhileJoining;
}

/// @nodoc
abstract class $ConferenceLoadingCopyWith<$Res> {
  factory $ConferenceLoadingCopyWith(
          ConferenceLoading value, $Res Function(ConferenceLoading) then) =
      _$ConferenceLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConferenceLoadingCopyWithImpl<$Res>
    extends _$ConferenceStateCopyWithImpl<$Res>
    implements $ConferenceLoadingCopyWith<$Res> {
  _$ConferenceLoadingCopyWithImpl(
      ConferenceLoading _value, $Res Function(ConferenceLoading) _then)
      : super(_value, (v) => _then(v as ConferenceLoading));

  @override
  ConferenceLoading get _value => super._value as ConferenceLoading;
}

/// @nodoc
class _$ConferenceLoading implements ConferenceLoading {
  const _$ConferenceLoading();

  @override
  String toString() {
    return 'ConferenceState.conferenceLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ConferenceLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Room room) conferenceJoined,
    required TResult Function() errorWhileJoining,
    required TResult Function() conferenceLoading,
    required TResult Function() conferenceTerminated,
  }) {
    return conferenceLoading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Room room)? conferenceJoined,
    TResult Function()? errorWhileJoining,
    TResult Function()? conferenceLoading,
    TResult Function()? conferenceTerminated,
    required TResult orElse(),
  }) {
    if (conferenceLoading != null) {
      return conferenceLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ConferenceJoined value) conferenceJoined,
    required TResult Function(ErrorWhileJoining value) errorWhileJoining,
    required TResult Function(ConferenceLoading value) conferenceLoading,
    required TResult Function(ConferenceTerminated value) conferenceTerminated,
  }) {
    return conferenceLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ConferenceJoined value)? conferenceJoined,
    TResult Function(ErrorWhileJoining value)? errorWhileJoining,
    TResult Function(ConferenceLoading value)? conferenceLoading,
    TResult Function(ConferenceTerminated value)? conferenceTerminated,
    required TResult orElse(),
  }) {
    if (conferenceLoading != null) {
      return conferenceLoading(this);
    }
    return orElse();
  }
}

abstract class ConferenceLoading implements ConferenceState {
  const factory ConferenceLoading() = _$ConferenceLoading;
}

/// @nodoc
abstract class $ConferenceTerminatedCopyWith<$Res> {
  factory $ConferenceTerminatedCopyWith(ConferenceTerminated value,
          $Res Function(ConferenceTerminated) then) =
      _$ConferenceTerminatedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConferenceTerminatedCopyWithImpl<$Res>
    extends _$ConferenceStateCopyWithImpl<$Res>
    implements $ConferenceTerminatedCopyWith<$Res> {
  _$ConferenceTerminatedCopyWithImpl(
      ConferenceTerminated _value, $Res Function(ConferenceTerminated) _then)
      : super(_value, (v) => _then(v as ConferenceTerminated));

  @override
  ConferenceTerminated get _value => super._value as ConferenceTerminated;
}

/// @nodoc
class _$ConferenceTerminated implements ConferenceTerminated {
  const _$ConferenceTerminated();

  @override
  String toString() {
    return 'ConferenceState.conferenceTerminated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ConferenceTerminated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Room room) conferenceJoined,
    required TResult Function() errorWhileJoining,
    required TResult Function() conferenceLoading,
    required TResult Function() conferenceTerminated,
  }) {
    return conferenceTerminated();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Room room)? conferenceJoined,
    TResult Function()? errorWhileJoining,
    TResult Function()? conferenceLoading,
    TResult Function()? conferenceTerminated,
    required TResult orElse(),
  }) {
    if (conferenceTerminated != null) {
      return conferenceTerminated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ConferenceJoined value) conferenceJoined,
    required TResult Function(ErrorWhileJoining value) errorWhileJoining,
    required TResult Function(ConferenceLoading value) conferenceLoading,
    required TResult Function(ConferenceTerminated value) conferenceTerminated,
  }) {
    return conferenceTerminated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ConferenceJoined value)? conferenceJoined,
    TResult Function(ErrorWhileJoining value)? errorWhileJoining,
    TResult Function(ConferenceLoading value)? conferenceLoading,
    TResult Function(ConferenceTerminated value)? conferenceTerminated,
    required TResult orElse(),
  }) {
    if (conferenceTerminated != null) {
      return conferenceTerminated(this);
    }
    return orElse();
  }
}

abstract class ConferenceTerminated implements ConferenceState {
  const factory ConferenceTerminated() = _$ConferenceTerminated;
}
