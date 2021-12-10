// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'notification_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
NotificationDTO _$NotificationDTOFromJson(Map<String, dynamic> json) {
  return _NotificationDTO.fromJson(json);
}

/// @nodoc
class _$NotificationDTOTearOff {
  const _$NotificationDTOTearOff();

// ignore: unused_element
  _NotificationDTO call(
      {String id,
      String title,
      String description,
      @TimestampConverter() DateTime time}) {
    return _NotificationDTO(
      id: id,
      title: title,
      description: description,
      time: time,
    );
  }

// ignore: unused_element
  NotificationDTO fromJson(Map<String, Object> json) {
    return NotificationDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $NotificationDTO = _$NotificationDTOTearOff();

/// @nodoc
mixin _$NotificationDTO {
  String get id;
  String get title;
  String get description;
  @TimestampConverter()
  DateTime get time;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $NotificationDTOCopyWith<NotificationDTO> get copyWith;
}

/// @nodoc
abstract class $NotificationDTOCopyWith<$Res> {
  factory $NotificationDTOCopyWith(
          NotificationDTO value, $Res Function(NotificationDTO) then) =
      _$NotificationDTOCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String title,
      String description,
      @TimestampConverter() DateTime time});
}

/// @nodoc
class _$NotificationDTOCopyWithImpl<$Res>
    implements $NotificationDTOCopyWith<$Res> {
  _$NotificationDTOCopyWithImpl(this._value, this._then);

  final NotificationDTO _value;
  // ignore: unused_field
  final $Res Function(NotificationDTO) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object description = freezed,
    Object time = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      time: time == freezed ? _value.time : time as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$NotificationDTOCopyWith<$Res>
    implements $NotificationDTOCopyWith<$Res> {
  factory _$NotificationDTOCopyWith(
          _NotificationDTO value, $Res Function(_NotificationDTO) then) =
      __$NotificationDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String title,
      String description,
      @TimestampConverter() DateTime time});
}

/// @nodoc
class __$NotificationDTOCopyWithImpl<$Res>
    extends _$NotificationDTOCopyWithImpl<$Res>
    implements _$NotificationDTOCopyWith<$Res> {
  __$NotificationDTOCopyWithImpl(
      _NotificationDTO _value, $Res Function(_NotificationDTO) _then)
      : super(_value, (v) => _then(v as _NotificationDTO));

  @override
  _NotificationDTO get _value => super._value as _NotificationDTO;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object description = freezed,
    Object time = freezed,
  }) {
    return _then(_NotificationDTO(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      time: time == freezed ? _value.time : time as DateTime,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_NotificationDTO extends _NotificationDTO {
  const _$_NotificationDTO(
      {this.id, this.title, this.description, @TimestampConverter() this.time})
      : super._();

  factory _$_NotificationDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_NotificationDTOFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  @TimestampConverter()
  final DateTime time;

  @override
  String toString() {
    return 'NotificationDTO(id: $id, title: $title, description: $description, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NotificationDTO &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
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
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(time);

  @JsonKey(ignore: true)
  @override
  _$NotificationDTOCopyWith<_NotificationDTO> get copyWith =>
      __$NotificationDTOCopyWithImpl<_NotificationDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NotificationDTOToJson(this);
  }
}

abstract class _NotificationDTO extends NotificationDTO {
  const _NotificationDTO._() : super._();
  const factory _NotificationDTO(
      {String id,
      String title,
      String description,
      @TimestampConverter() DateTime time}) = _$_NotificationDTO;

  factory _NotificationDTO.fromJson(Map<String, dynamic> json) =
      _$_NotificationDTO.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  @TimestampConverter()
  DateTime get time;
  @override
  @JsonKey(ignore: true)
  _$NotificationDTOCopyWith<_NotificationDTO> get copyWith;
}
