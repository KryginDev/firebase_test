// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _Loaded loaded({List<NotificationModel> notifications}) {
    return _Loaded(
      notifications: notifications,
    );
  }

// ignore: unused_element
  _Failure failure({String message}) {
    return _Failure(
      message: message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult loaded(List<NotificationModel> notifications),
    @required TResult failure(String message),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult loaded(List<NotificationModel> notifications),
    TResult failure(String message),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult loaded(_Loaded value),
    @required TResult failure(_Failure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult loaded(_Loaded value),
    TResult failure(_Failure value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
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
    return 'HomeState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult loaded(List<NotificationModel> notifications),
    @required TResult failure(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult loaded(List<NotificationModel> notifications),
    TResult failure(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult loaded(_Loaded value),
    @required TResult failure(_Failure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult loaded(_Loaded value),
    TResult failure(_Failure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc
class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'HomeState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult loaded(List<NotificationModel> notifications),
    @required TResult failure(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failure != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult loaded(List<NotificationModel> notifications),
    TResult failure(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult loaded(_Loaded value),
    @required TResult failure(_Failure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failure != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult loaded(_Loaded value),
    TResult failure(_Failure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements HomeState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({List<NotificationModel> notifications});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object notifications = freezed,
  }) {
    return _then(_Loaded(
      notifications: notifications == freezed
          ? _value.notifications
          : notifications as List<NotificationModel>,
    ));
  }
}

/// @nodoc
class _$_Loaded implements _Loaded {
  const _$_Loaded({this.notifications});

  @override
  final List<NotificationModel> notifications;

  @override
  String toString() {
    return 'HomeState.loaded(notifications: $notifications)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loaded &&
            (identical(other.notifications, notifications) ||
                const DeepCollectionEquality()
                    .equals(other.notifications, notifications)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(notifications);

  @JsonKey(ignore: true)
  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult loaded(List<NotificationModel> notifications),
    @required TResult failure(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failure != null);
    return loaded(notifications);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult loaded(List<NotificationModel> notifications),
    TResult failure(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(notifications);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult loaded(_Loaded value),
    @required TResult failure(_Failure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failure != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult loaded(_Loaded value),
    TResult failure(_Failure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements HomeState {
  const factory _Loaded({List<NotificationModel> notifications}) = _$_Loaded;

  List<NotificationModel> get notifications;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$FailureCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_Failure(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$_Failure implements _Failure {
  const _$_Failure({this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'HomeState.failure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Failure &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$FailureCopyWith<_Failure> get copyWith =>
      __$FailureCopyWithImpl<_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult loaded(List<NotificationModel> notifications),
    @required TResult failure(String message),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failure != null);
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult loaded(List<NotificationModel> notifications),
    TResult failure(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loading(_Loading value),
    @required TResult loaded(_Loaded value),
    @required TResult failure(_Failure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failure != null);
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loading(_Loading value),
    TResult loaded(_Loaded value),
    TResult failure(_Failure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements HomeState {
  const factory _Failure({String message}) = _$_Failure;

  String get message;
  @JsonKey(ignore: true)
  _$FailureCopyWith<_Failure> get copyWith;
}

/// @nodoc
class _$HomeEventTearOff {
  const _$HomeEventTearOff();

// ignore: unused_element
  _WatchNotifications watchNotifications() {
    return const _WatchNotifications();
  }

// ignore: unused_element
  _Error error() {
    return const _Error();
  }

// ignore: unused_element
  _RequestPermission requestPermission() {
    return const _RequestPermission();
  }

// ignore: unused_element
  _NotificationsReceived notificationsReceived(
      {List<NotificationModel> notificationsList}) {
    return _NotificationsReceived(
      notificationsList: notificationsList,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $HomeEvent = _$HomeEventTearOff();

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchNotifications(),
    @required TResult error(),
    @required TResult requestPermission(),
    @required
        TResult notificationsReceived(
            List<NotificationModel> notificationsList),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchNotifications(),
    TResult error(),
    TResult requestPermission(),
    TResult notificationsReceived(List<NotificationModel> notificationsList),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchNotifications(_WatchNotifications value),
    @required TResult error(_Error value),
    @required TResult requestPermission(_RequestPermission value),
    @required TResult notificationsReceived(_NotificationsReceived value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchNotifications(_WatchNotifications value),
    TResult error(_Error value),
    TResult requestPermission(_RequestPermission value),
    TResult notificationsReceived(_NotificationsReceived value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;
}

/// @nodoc
abstract class _$WatchNotificationsCopyWith<$Res> {
  factory _$WatchNotificationsCopyWith(
          _WatchNotifications value, $Res Function(_WatchNotifications) then) =
      __$WatchNotificationsCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchNotificationsCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements _$WatchNotificationsCopyWith<$Res> {
  __$WatchNotificationsCopyWithImpl(
      _WatchNotifications _value, $Res Function(_WatchNotifications) _then)
      : super(_value, (v) => _then(v as _WatchNotifications));

  @override
  _WatchNotifications get _value => super._value as _WatchNotifications;
}

/// @nodoc
class _$_WatchNotifications implements _WatchNotifications {
  const _$_WatchNotifications();

  @override
  String toString() {
    return 'HomeEvent.watchNotifications()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchNotifications);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchNotifications(),
    @required TResult error(),
    @required TResult requestPermission(),
    @required
        TResult notificationsReceived(
            List<NotificationModel> notificationsList),
  }) {
    assert(watchNotifications != null);
    assert(error != null);
    assert(requestPermission != null);
    assert(notificationsReceived != null);
    return watchNotifications();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchNotifications(),
    TResult error(),
    TResult requestPermission(),
    TResult notificationsReceived(List<NotificationModel> notificationsList),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchNotifications != null) {
      return watchNotifications();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchNotifications(_WatchNotifications value),
    @required TResult error(_Error value),
    @required TResult requestPermission(_RequestPermission value),
    @required TResult notificationsReceived(_NotificationsReceived value),
  }) {
    assert(watchNotifications != null);
    assert(error != null);
    assert(requestPermission != null);
    assert(notificationsReceived != null);
    return watchNotifications(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchNotifications(_WatchNotifications value),
    TResult error(_Error value),
    TResult requestPermission(_RequestPermission value),
    TResult notificationsReceived(_NotificationsReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchNotifications != null) {
      return watchNotifications(this);
    }
    return orElse();
  }
}

abstract class _WatchNotifications implements HomeEvent {
  const factory _WatchNotifications() = _$_WatchNotifications;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;
}

/// @nodoc
class _$_Error implements _Error {
  const _$_Error();

  @override
  String toString() {
    return 'HomeEvent.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchNotifications(),
    @required TResult error(),
    @required TResult requestPermission(),
    @required
        TResult notificationsReceived(
            List<NotificationModel> notificationsList),
  }) {
    assert(watchNotifications != null);
    assert(error != null);
    assert(requestPermission != null);
    assert(notificationsReceived != null);
    return error();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchNotifications(),
    TResult error(),
    TResult requestPermission(),
    TResult notificationsReceived(List<NotificationModel> notificationsList),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchNotifications(_WatchNotifications value),
    @required TResult error(_Error value),
    @required TResult requestPermission(_RequestPermission value),
    @required TResult notificationsReceived(_NotificationsReceived value),
  }) {
    assert(watchNotifications != null);
    assert(error != null);
    assert(requestPermission != null);
    assert(notificationsReceived != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchNotifications(_WatchNotifications value),
    TResult error(_Error value),
    TResult requestPermission(_RequestPermission value),
    TResult notificationsReceived(_NotificationsReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements HomeEvent {
  const factory _Error() = _$_Error;
}

/// @nodoc
abstract class _$RequestPermissionCopyWith<$Res> {
  factory _$RequestPermissionCopyWith(
          _RequestPermission value, $Res Function(_RequestPermission) then) =
      __$RequestPermissionCopyWithImpl<$Res>;
}

/// @nodoc
class __$RequestPermissionCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements _$RequestPermissionCopyWith<$Res> {
  __$RequestPermissionCopyWithImpl(
      _RequestPermission _value, $Res Function(_RequestPermission) _then)
      : super(_value, (v) => _then(v as _RequestPermission));

  @override
  _RequestPermission get _value => super._value as _RequestPermission;
}

/// @nodoc
class _$_RequestPermission implements _RequestPermission {
  const _$_RequestPermission();

  @override
  String toString() {
    return 'HomeEvent.requestPermission()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RequestPermission);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchNotifications(),
    @required TResult error(),
    @required TResult requestPermission(),
    @required
        TResult notificationsReceived(
            List<NotificationModel> notificationsList),
  }) {
    assert(watchNotifications != null);
    assert(error != null);
    assert(requestPermission != null);
    assert(notificationsReceived != null);
    return requestPermission();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchNotifications(),
    TResult error(),
    TResult requestPermission(),
    TResult notificationsReceived(List<NotificationModel> notificationsList),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (requestPermission != null) {
      return requestPermission();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchNotifications(_WatchNotifications value),
    @required TResult error(_Error value),
    @required TResult requestPermission(_RequestPermission value),
    @required TResult notificationsReceived(_NotificationsReceived value),
  }) {
    assert(watchNotifications != null);
    assert(error != null);
    assert(requestPermission != null);
    assert(notificationsReceived != null);
    return requestPermission(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchNotifications(_WatchNotifications value),
    TResult error(_Error value),
    TResult requestPermission(_RequestPermission value),
    TResult notificationsReceived(_NotificationsReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (requestPermission != null) {
      return requestPermission(this);
    }
    return orElse();
  }
}

abstract class _RequestPermission implements HomeEvent {
  const factory _RequestPermission() = _$_RequestPermission;
}

/// @nodoc
abstract class _$NotificationsReceivedCopyWith<$Res> {
  factory _$NotificationsReceivedCopyWith(_NotificationsReceived value,
          $Res Function(_NotificationsReceived) then) =
      __$NotificationsReceivedCopyWithImpl<$Res>;
  $Res call({List<NotificationModel> notificationsList});
}

/// @nodoc
class __$NotificationsReceivedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements _$NotificationsReceivedCopyWith<$Res> {
  __$NotificationsReceivedCopyWithImpl(_NotificationsReceived _value,
      $Res Function(_NotificationsReceived) _then)
      : super(_value, (v) => _then(v as _NotificationsReceived));

  @override
  _NotificationsReceived get _value => super._value as _NotificationsReceived;

  @override
  $Res call({
    Object notificationsList = freezed,
  }) {
    return _then(_NotificationsReceived(
      notificationsList: notificationsList == freezed
          ? _value.notificationsList
          : notificationsList as List<NotificationModel>,
    ));
  }
}

/// @nodoc
class _$_NotificationsReceived implements _NotificationsReceived {
  const _$_NotificationsReceived({this.notificationsList});

  @override
  final List<NotificationModel> notificationsList;

  @override
  String toString() {
    return 'HomeEvent.notificationsReceived(notificationsList: $notificationsList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NotificationsReceived &&
            (identical(other.notificationsList, notificationsList) ||
                const DeepCollectionEquality()
                    .equals(other.notificationsList, notificationsList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(notificationsList);

  @JsonKey(ignore: true)
  @override
  _$NotificationsReceivedCopyWith<_NotificationsReceived> get copyWith =>
      __$NotificationsReceivedCopyWithImpl<_NotificationsReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchNotifications(),
    @required TResult error(),
    @required TResult requestPermission(),
    @required
        TResult notificationsReceived(
            List<NotificationModel> notificationsList),
  }) {
    assert(watchNotifications != null);
    assert(error != null);
    assert(requestPermission != null);
    assert(notificationsReceived != null);
    return notificationsReceived(notificationsList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchNotifications(),
    TResult error(),
    TResult requestPermission(),
    TResult notificationsReceived(List<NotificationModel> notificationsList),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (notificationsReceived != null) {
      return notificationsReceived(notificationsList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchNotifications(_WatchNotifications value),
    @required TResult error(_Error value),
    @required TResult requestPermission(_RequestPermission value),
    @required TResult notificationsReceived(_NotificationsReceived value),
  }) {
    assert(watchNotifications != null);
    assert(error != null);
    assert(requestPermission != null);
    assert(notificationsReceived != null);
    return notificationsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchNotifications(_WatchNotifications value),
    TResult error(_Error value),
    TResult requestPermission(_RequestPermission value),
    TResult notificationsReceived(_NotificationsReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (notificationsReceived != null) {
      return notificationsReceived(this);
    }
    return orElse();
  }
}

abstract class _NotificationsReceived implements HomeEvent {
  const factory _NotificationsReceived(
      {List<NotificationModel> notificationsList}) = _$_NotificationsReceived;

  List<NotificationModel> get notificationsList;
  @JsonKey(ignore: true)
  _$NotificationsReceivedCopyWith<_NotificationsReceived> get copyWith;
}
