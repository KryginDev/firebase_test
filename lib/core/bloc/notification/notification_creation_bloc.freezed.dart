// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'notification_creation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$NotificationCreationEventTearOff {
  const _$NotificationCreationEventTearOff();

// ignore: unused_element
  _NotificationCreationEvent notificationCreationEvent(
      {String title, String description, DateTime time}) {
    return _NotificationCreationEvent(
      title: title,
      description: description,
      time: time,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $NotificationCreationEvent = _$NotificationCreationEventTearOff();

/// @nodoc
mixin _$NotificationCreationEvent {
  String get title;
  String get description;
  DateTime get time;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult notificationCreationEvent(
            String title, String description, DateTime time),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult notificationCreationEvent(
        String title, String description, DateTime time),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult notificationCreationEvent(_NotificationCreationEvent value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult notificationCreationEvent(_NotificationCreationEvent value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $NotificationCreationEventCopyWith<NotificationCreationEvent> get copyWith;
}

/// @nodoc
abstract class $NotificationCreationEventCopyWith<$Res> {
  factory $NotificationCreationEventCopyWith(NotificationCreationEvent value,
          $Res Function(NotificationCreationEvent) then) =
      _$NotificationCreationEventCopyWithImpl<$Res>;
  $Res call({String title, String description, DateTime time});
}

/// @nodoc
class _$NotificationCreationEventCopyWithImpl<$Res>
    implements $NotificationCreationEventCopyWith<$Res> {
  _$NotificationCreationEventCopyWithImpl(this._value, this._then);

  final NotificationCreationEvent _value;
  // ignore: unused_field
  final $Res Function(NotificationCreationEvent) _then;

  @override
  $Res call({
    Object title = freezed,
    Object description = freezed,
    Object time = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      time: time == freezed ? _value.time : time as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$NotificationCreationEventCopyWith<$Res>
    implements $NotificationCreationEventCopyWith<$Res> {
  factory _$NotificationCreationEventCopyWith(_NotificationCreationEvent value,
          $Res Function(_NotificationCreationEvent) then) =
      __$NotificationCreationEventCopyWithImpl<$Res>;
  @override
  $Res call({String title, String description, DateTime time});
}

/// @nodoc
class __$NotificationCreationEventCopyWithImpl<$Res>
    extends _$NotificationCreationEventCopyWithImpl<$Res>
    implements _$NotificationCreationEventCopyWith<$Res> {
  __$NotificationCreationEventCopyWithImpl(_NotificationCreationEvent _value,
      $Res Function(_NotificationCreationEvent) _then)
      : super(_value, (v) => _then(v as _NotificationCreationEvent));

  @override
  _NotificationCreationEvent get _value =>
      super._value as _NotificationCreationEvent;

  @override
  $Res call({
    Object title = freezed,
    Object description = freezed,
    Object time = freezed,
  }) {
    return _then(_NotificationCreationEvent(
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      time: time == freezed ? _value.time : time as DateTime,
    ));
  }
}

/// @nodoc
class _$_NotificationCreationEvent implements _NotificationCreationEvent {
  const _$_NotificationCreationEvent({this.title, this.description, this.time});

  @override
  final String title;
  @override
  final String description;
  @override
  final DateTime time;

  @override
  String toString() {
    return 'NotificationCreationEvent.notificationCreationEvent(title: $title, description: $description, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NotificationCreationEvent &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(time);

  @JsonKey(ignore: true)
  @override
  _$NotificationCreationEventCopyWith<_NotificationCreationEvent>
      get copyWith =>
          __$NotificationCreationEventCopyWithImpl<_NotificationCreationEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult notificationCreationEvent(
            String title, String description, DateTime time),
  }) {
    assert(notificationCreationEvent != null);
    return notificationCreationEvent(title, description, time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult notificationCreationEvent(
        String title, String description, DateTime time),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (notificationCreationEvent != null) {
      return notificationCreationEvent(title, description, time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult notificationCreationEvent(_NotificationCreationEvent value),
  }) {
    assert(notificationCreationEvent != null);
    return notificationCreationEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult notificationCreationEvent(_NotificationCreationEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (notificationCreationEvent != null) {
      return notificationCreationEvent(this);
    }
    return orElse();
  }
}

abstract class _NotificationCreationEvent implements NotificationCreationEvent {
  const factory _NotificationCreationEvent(
      {String title,
      String description,
      DateTime time}) = _$_NotificationCreationEvent;

  @override
  String get title;
  @override
  String get description;
  @override
  DateTime get time;
  @override
  @JsonKey(ignore: true)
  _$NotificationCreationEventCopyWith<_NotificationCreationEvent> get copyWith;
}

/// @nodoc
class _$NotificationCreationStateTearOff {
  const _$NotificationCreationStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _Loaded loaded({NotificationModel model}) {
    return _Loaded(
      model: model,
    );
  }

// ignore: unused_element
  _Failure failure({String errorMessage}) {
    return _Failure(
      errorMessage: errorMessage,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $NotificationCreationState = _$NotificationCreationStateTearOff();

/// @nodoc
mixin _$NotificationCreationState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult loaded(NotificationModel model),
    @required TResult failure(String errorMessage),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult loaded(NotificationModel model),
    TResult failure(String errorMessage),
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
abstract class $NotificationCreationStateCopyWith<$Res> {
  factory $NotificationCreationStateCopyWith(NotificationCreationState value,
          $Res Function(NotificationCreationState) then) =
      _$NotificationCreationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotificationCreationStateCopyWithImpl<$Res>
    implements $NotificationCreationStateCopyWith<$Res> {
  _$NotificationCreationStateCopyWithImpl(this._value, this._then);

  final NotificationCreationState _value;
  // ignore: unused_field
  final $Res Function(NotificationCreationState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$NotificationCreationStateCopyWithImpl<$Res>
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
    return 'NotificationCreationState.initial()';
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
    @required TResult loaded(NotificationModel model),
    @required TResult failure(String errorMessage),
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
    TResult loaded(NotificationModel model),
    TResult failure(String errorMessage),
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

abstract class _Initial implements NotificationCreationState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res>
    extends _$NotificationCreationStateCopyWithImpl<$Res>
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
    return 'NotificationCreationState.loading()';
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
    @required TResult loaded(NotificationModel model),
    @required TResult failure(String errorMessage),
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
    TResult loaded(NotificationModel model),
    TResult failure(String errorMessage),
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

abstract class _Loading implements NotificationCreationState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({NotificationModel model});

  $NotificationModelCopyWith<$Res> get model;
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    extends _$NotificationCreationStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object model = freezed,
  }) {
    return _then(_Loaded(
      model: model == freezed ? _value.model : model as NotificationModel,
    ));
  }

  @override
  $NotificationModelCopyWith<$Res> get model {
    if (_value.model == null) {
      return null;
    }
    return $NotificationModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc
class _$_Loaded implements _Loaded {
  const _$_Loaded({this.model});

  @override
  final NotificationModel model;

  @override
  String toString() {
    return 'NotificationCreationState.loaded(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loaded &&
            (identical(other.model, model) ||
                const DeepCollectionEquality().equals(other.model, model)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(model);

  @JsonKey(ignore: true)
  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult loaded(NotificationModel model),
    @required TResult failure(String errorMessage),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failure != null);
    return loaded(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult loaded(NotificationModel model),
    TResult failure(String errorMessage),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(model);
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

abstract class _Loaded implements NotificationCreationState {
  const factory _Loaded({NotificationModel model}) = _$_Loaded;

  NotificationModel get model;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

/// @nodoc
class __$FailureCopyWithImpl<$Res>
    extends _$NotificationCreationStateCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;

  @override
  $Res call({
    Object errorMessage = freezed,
  }) {
    return _then(_Failure(
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage as String,
    ));
  }
}

/// @nodoc
class _$_Failure implements _Failure {
  const _$_Failure({this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'NotificationCreationState.failure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Failure &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errorMessage);

  @JsonKey(ignore: true)
  @override
  _$FailureCopyWith<_Failure> get copyWith =>
      __$FailureCopyWithImpl<_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loading(),
    @required TResult loaded(NotificationModel model),
    @required TResult failure(String errorMessage),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failure != null);
    return failure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loading(),
    TResult loaded(NotificationModel model),
    TResult failure(String errorMessage),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(errorMessage);
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

abstract class _Failure implements NotificationCreationState {
  const factory _Failure({String errorMessage}) = _$_Failure;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$FailureCopyWith<_Failure> get copyWith;
}
