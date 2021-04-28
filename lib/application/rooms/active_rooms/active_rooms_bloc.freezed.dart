// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'active_rooms_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ActiveRoomsEventTearOff {
  const _$ActiveRoomsEventTearOff();

  _Opened opened() {
    return const _Opened();
  }

  _RoomsReceived roomsReceived(
      Either<RoomsFailure, KtList<Room>> failureOrRooms) {
    return _RoomsReceived(
      failureOrRooms,
    );
  }
}

/// @nodoc
const $ActiveRoomsEvent = _$ActiveRoomsEventTearOff();

/// @nodoc
mixin _$ActiveRoomsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() opened,
    required TResult Function(Either<RoomsFailure, KtList<Room>> failureOrRooms)
        roomsReceived,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? opened,
    TResult Function(Either<RoomsFailure, KtList<Room>> failureOrRooms)?
        roomsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Opened value) opened,
    required TResult Function(_RoomsReceived value) roomsReceived,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Opened value)? opened,
    TResult Function(_RoomsReceived value)? roomsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActiveRoomsEventCopyWith<$Res> {
  factory $ActiveRoomsEventCopyWith(
          ActiveRoomsEvent value, $Res Function(ActiveRoomsEvent) then) =
      _$ActiveRoomsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ActiveRoomsEventCopyWithImpl<$Res>
    implements $ActiveRoomsEventCopyWith<$Res> {
  _$ActiveRoomsEventCopyWithImpl(this._value, this._then);

  final ActiveRoomsEvent _value;

  // ignore: unused_field
  final $Res Function(ActiveRoomsEvent) _then;
}

/// @nodoc
abstract class _$OpenedCopyWith<$Res> {
  factory _$OpenedCopyWith(_Opened value, $Res Function(_Opened) then) =
      __$OpenedCopyWithImpl<$Res>;
}

/// @nodoc
class __$OpenedCopyWithImpl<$Res> extends _$ActiveRoomsEventCopyWithImpl<$Res>
    implements _$OpenedCopyWith<$Res> {
  __$OpenedCopyWithImpl(_Opened _value, $Res Function(_Opened) _then)
      : super(_value, (v) => _then(v as _Opened));

  @override
  _Opened get _value => super._value as _Opened;
}

/// @nodoc
class _$_Opened implements _Opened {
  const _$_Opened();

  @override
  String toString() {
    return 'ActiveRoomsEvent.opened()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Opened);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() opened,
    required TResult Function(Either<RoomsFailure, KtList<Room>> failureOrRooms)
        roomsReceived,
  }) {
    return opened();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? opened,
    TResult Function(Either<RoomsFailure, KtList<Room>> failureOrRooms)?
        roomsReceived,
    required TResult orElse(),
  }) {
    if (opened != null) {
      return opened();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Opened value) opened,
    required TResult Function(_RoomsReceived value) roomsReceived,
  }) {
    return opened(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Opened value)? opened,
    TResult Function(_RoomsReceived value)? roomsReceived,
    required TResult orElse(),
  }) {
    if (opened != null) {
      return opened(this);
    }
    return orElse();
  }
}

abstract class _Opened implements ActiveRoomsEvent {
  const factory _Opened() = _$_Opened;
}

/// @nodoc
abstract class _$RoomsReceivedCopyWith<$Res> {
  factory _$RoomsReceivedCopyWith(
          _RoomsReceived value, $Res Function(_RoomsReceived) then) =
      __$RoomsReceivedCopyWithImpl<$Res>;

  $Res call({Either<RoomsFailure, KtList<Room>> failureOrRooms});
}

/// @nodoc
class __$RoomsReceivedCopyWithImpl<$Res>
    extends _$ActiveRoomsEventCopyWithImpl<$Res>
    implements _$RoomsReceivedCopyWith<$Res> {
  __$RoomsReceivedCopyWithImpl(
      _RoomsReceived _value, $Res Function(_RoomsReceived) _then)
      : super(_value, (v) => _then(v as _RoomsReceived));

  @override
  _RoomsReceived get _value => super._value as _RoomsReceived;

  @override
  $Res call({
    Object? failureOrRooms = freezed,
  }) {
    return _then(_RoomsReceived(
      failureOrRooms == freezed
          ? _value.failureOrRooms
          : failureOrRooms // ignore: cast_nullable_to_non_nullable
              as Either<RoomsFailure, KtList<Room>>,
    ));
  }
}

/// @nodoc
class _$_RoomsReceived implements _RoomsReceived {
  const _$_RoomsReceived(this.failureOrRooms);

  @override
  final Either<RoomsFailure, KtList<Room>> failureOrRooms;

  @override
  String toString() {
    return 'ActiveRoomsEvent.roomsReceived(failureOrRooms: $failureOrRooms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RoomsReceived &&
            (identical(other.failureOrRooms, failureOrRooms) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrRooms, failureOrRooms)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrRooms);

  @JsonKey(ignore: true)
  @override
  _$RoomsReceivedCopyWith<_RoomsReceived> get copyWith =>
      __$RoomsReceivedCopyWithImpl<_RoomsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() opened,
    required TResult Function(Either<RoomsFailure, KtList<Room>> failureOrRooms)
        roomsReceived,
  }) {
    return roomsReceived(failureOrRooms);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? opened,
    TResult Function(Either<RoomsFailure, KtList<Room>> failureOrRooms)?
        roomsReceived,
    required TResult orElse(),
  }) {
    if (roomsReceived != null) {
      return roomsReceived(failureOrRooms);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Opened value) opened,
    required TResult Function(_RoomsReceived value) roomsReceived,
  }) {
    return roomsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Opened value)? opened,
    TResult Function(_RoomsReceived value)? roomsReceived,
    required TResult orElse(),
  }) {
    if (roomsReceived != null) {
      return roomsReceived(this);
    }
    return orElse();
  }
}

abstract class _RoomsReceived implements ActiveRoomsEvent {
  const factory _RoomsReceived(
      Either<RoomsFailure, KtList<Room>> failureOrRooms) = _$_RoomsReceived;

  Either<RoomsFailure, KtList<Room>> get failureOrRooms =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$RoomsReceivedCopyWith<_RoomsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ActiveRoomsStateTearOff {
  const _$ActiveRoomsStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(KtList<Room> activeRooms) {
    return _LoadSuccess(
      activeRooms,
    );
  }

  _LoadFailure loadFailure(RoomsFailure failure) {
    return _LoadFailure(
      failure,
    );
  }
}

/// @nodoc
const $ActiveRoomsState = _$ActiveRoomsStateTearOff();

/// @nodoc
mixin _$ActiveRoomsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Room> activeRooms) loadSuccess,
    required TResult Function(RoomsFailure failure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Room> activeRooms)? loadSuccess,
    TResult Function(RoomsFailure failure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActiveRoomsStateCopyWith<$Res> {
  factory $ActiveRoomsStateCopyWith(
          ActiveRoomsState value, $Res Function(ActiveRoomsState) then) =
      _$ActiveRoomsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ActiveRoomsStateCopyWithImpl<$Res>
    implements $ActiveRoomsStateCopyWith<$Res> {
  _$ActiveRoomsStateCopyWithImpl(this._value, this._then);

  final ActiveRoomsState _value;
  // ignore: unused_field
  final $Res Function(ActiveRoomsState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$ActiveRoomsStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ActiveRoomsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Room> activeRooms) loadSuccess,
    required TResult Function(RoomsFailure failure) loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Room> activeRooms)? loadSuccess,
    TResult Function(RoomsFailure failure)? loadFailure,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ActiveRoomsState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$ActiveRoomsStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc
class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'ActiveRoomsState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Room> activeRooms) loadSuccess,
    required TResult Function(RoomsFailure failure) loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Room> activeRooms)? loadSuccess,
    TResult Function(RoomsFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements ActiveRoomsState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<Room> activeRooms});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$ActiveRoomsStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? activeRooms = freezed,
  }) {
    return _then(_LoadSuccess(
      activeRooms == freezed
          ? _value.activeRooms
          : activeRooms // ignore: cast_nullable_to_non_nullable
              as KtList<Room>,
    ));
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.activeRooms);

  @override
  final KtList<Room> activeRooms;

  @override
  String toString() {
    return 'ActiveRoomsState.loadSuccess(activeRooms: $activeRooms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.activeRooms, activeRooms) ||
                const DeepCollectionEquality()
                    .equals(other.activeRooms, activeRooms)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(activeRooms);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Room> activeRooms) loadSuccess,
    required TResult Function(RoomsFailure failure) loadFailure,
  }) {
    return loadSuccess(activeRooms);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Room> activeRooms)? loadSuccess,
    TResult Function(RoomsFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(activeRooms);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements ActiveRoomsState {
  const factory _LoadSuccess(KtList<Room> activeRooms) = _$_LoadSuccess;

  KtList<Room> get activeRooms => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({RoomsFailure failure});

  $RoomsFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$ActiveRoomsStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_LoadFailure(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as RoomsFailure,
    ));
  }

  @override
  $RoomsFailureCopyWith<$Res> get failure {
    return $RoomsFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.failure);

  @override
  final RoomsFailure failure;

  @override
  String toString() {
    return 'ActiveRoomsState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(KtList<Room> activeRooms) loadSuccess,
    required TResult Function(RoomsFailure failure) loadFailure,
  }) {
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(KtList<Room> activeRooms)? loadSuccess,
    TResult Function(RoomsFailure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements ActiveRoomsState {
  const factory _LoadFailure(RoomsFailure failure) = _$_LoadFailure;

  RoomsFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
