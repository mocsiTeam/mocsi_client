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
}

/// @nodoc
const $ConferenceEvent = _$ConferenceEventTearOff();

/// @nodoc
mixin _$ConferenceEvent {
  Room get room => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Room room) conferenceOpened,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Room room)? conferenceOpened,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConferenceOpened value) conferenceOpened,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConferenceOpened value)? conferenceOpened,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConferenceEventCopyWith<ConferenceEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConferenceEventCopyWith<$Res> {
  factory $ConferenceEventCopyWith(
          ConferenceEvent value, $Res Function(ConferenceEvent) then) =
      _$ConferenceEventCopyWithImpl<$Res>;
  $Res call({Room room});

  $RoomCopyWith<$Res> get room;
}

/// @nodoc
class _$ConferenceEventCopyWithImpl<$Res>
    implements $ConferenceEventCopyWith<$Res> {
  _$ConferenceEventCopyWithImpl(this._value, this._then);

  final ConferenceEvent _value;
  // ignore: unused_field
  final $Res Function(ConferenceEvent) _then;

  @override
  $Res call({
    Object? room = freezed,
  }) {
    return _then(_value.copyWith(
      room: room == freezed
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
abstract class $ConferenceOpenedCopyWith<$Res>
    implements $ConferenceEventCopyWith<$Res> {
  factory $ConferenceOpenedCopyWith(
          ConferenceOpened value, $Res Function(ConferenceOpened) then) =
      _$ConferenceOpenedCopyWithImpl<$Res>;
  @override
  $Res call({Room room});

  @override
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
  }) {
    return conferenceOpened(room);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Room room)? conferenceOpened,
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
  }) {
    return conferenceOpened(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConferenceOpened value)? conferenceOpened,
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

  @override
  Room get room => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ConferenceOpenedCopyWith<ConferenceOpened> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ConferenceStateTearOff {
  const _$ConferenceStateTearOff();

  Initial initial() {
    return const Initial();
  }

  ConferenceJoined conferenceJoined() {
    return const ConferenceJoined();
  }

  ErrorWhileJoining errorWhileJoining() {
    return const ErrorWhileJoining();
  }
}

/// @nodoc
const $ConferenceState = _$ConferenceStateTearOff();

/// @nodoc
mixin _$ConferenceState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() conferenceJoined,
    required TResult Function() errorWhileJoining,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? conferenceJoined,
    TResult Function()? errorWhileJoining,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ConferenceJoined value) conferenceJoined,
    required TResult Function(ErrorWhileJoining value) errorWhileJoining,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ConferenceJoined value)? conferenceJoined,
    TResult Function(ErrorWhileJoining value)? errorWhileJoining,
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
    required TResult Function() conferenceJoined,
    required TResult Function() errorWhileJoining,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? conferenceJoined,
    TResult Function()? errorWhileJoining,
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
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ConferenceJoined value)? conferenceJoined,
    TResult Function(ErrorWhileJoining value)? errorWhileJoining,
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
}

/// @nodoc
class _$ConferenceJoined implements ConferenceJoined {
  const _$ConferenceJoined();

  @override
  String toString() {
    return 'ConferenceState.conferenceJoined()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ConferenceJoined);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() conferenceJoined,
    required TResult Function() errorWhileJoining,
  }) {
    return conferenceJoined();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? conferenceJoined,
    TResult Function()? errorWhileJoining,
    required TResult orElse(),
  }) {
    if (conferenceJoined != null) {
      return conferenceJoined();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(ConferenceJoined value) conferenceJoined,
    required TResult Function(ErrorWhileJoining value) errorWhileJoining,
  }) {
    return conferenceJoined(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ConferenceJoined value)? conferenceJoined,
    TResult Function(ErrorWhileJoining value)? errorWhileJoining,
    required TResult orElse(),
  }) {
    if (conferenceJoined != null) {
      return conferenceJoined(this);
    }
    return orElse();
  }
}

abstract class ConferenceJoined implements ConferenceState {
  const factory ConferenceJoined() = _$ConferenceJoined;
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
    required TResult Function() conferenceJoined,
    required TResult Function() errorWhileJoining,
  }) {
    return errorWhileJoining();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? conferenceJoined,
    TResult Function()? errorWhileJoining,
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
  }) {
    return errorWhileJoining(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(ConferenceJoined value)? conferenceJoined,
    TResult Function(ErrorWhileJoining value)? errorWhileJoining,
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
