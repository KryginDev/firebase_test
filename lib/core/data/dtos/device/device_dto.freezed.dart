// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'device_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
DeviceDTO _$DeviceDTOFromJson(Map<String, dynamic> json) {
  return _DeviceDTO.fromJson(json);
}

/// @nodoc
class _$DeviceDTOTearOff {
  const _$DeviceDTOTearOff();

// ignore: unused_element
  _DeviceDTO call({@required String token, @required String platform}) {
    return _DeviceDTO(
      token: token,
      platform: platform,
    );
  }

// ignore: unused_element
  DeviceDTO fromJson(Map<String, Object> json) {
    return DeviceDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $DeviceDTO = _$DeviceDTOTearOff();

/// @nodoc
mixin _$DeviceDTO {
  String get token;
  String get platform;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $DeviceDTOCopyWith<DeviceDTO> get copyWith;
}

/// @nodoc
abstract class $DeviceDTOCopyWith<$Res> {
  factory $DeviceDTOCopyWith(DeviceDTO value, $Res Function(DeviceDTO) then) =
      _$DeviceDTOCopyWithImpl<$Res>;
  $Res call({String token, String platform});
}

/// @nodoc
class _$DeviceDTOCopyWithImpl<$Res> implements $DeviceDTOCopyWith<$Res> {
  _$DeviceDTOCopyWithImpl(this._value, this._then);

  final DeviceDTO _value;
  // ignore: unused_field
  final $Res Function(DeviceDTO) _then;

  @override
  $Res call({
    Object token = freezed,
    Object platform = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed ? _value.token : token as String,
      platform: platform == freezed ? _value.platform : platform as String,
    ));
  }
}

/// @nodoc
abstract class _$DeviceDTOCopyWith<$Res> implements $DeviceDTOCopyWith<$Res> {
  factory _$DeviceDTOCopyWith(
          _DeviceDTO value, $Res Function(_DeviceDTO) then) =
      __$DeviceDTOCopyWithImpl<$Res>;
  @override
  $Res call({String token, String platform});
}

/// @nodoc
class __$DeviceDTOCopyWithImpl<$Res> extends _$DeviceDTOCopyWithImpl<$Res>
    implements _$DeviceDTOCopyWith<$Res> {
  __$DeviceDTOCopyWithImpl(_DeviceDTO _value, $Res Function(_DeviceDTO) _then)
      : super(_value, (v) => _then(v as _DeviceDTO));

  @override
  _DeviceDTO get _value => super._value as _DeviceDTO;

  @override
  $Res call({
    Object token = freezed,
    Object platform = freezed,
  }) {
    return _then(_DeviceDTO(
      token: token == freezed ? _value.token : token as String,
      platform: platform == freezed ? _value.platform : platform as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_DeviceDTO extends _DeviceDTO {
  const _$_DeviceDTO({@required this.token, @required this.platform})
      : assert(token != null),
        assert(platform != null),
        super._();

  factory _$_DeviceDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_DeviceDTOFromJson(json);

  @override
  final String token;
  @override
  final String platform;

  @override
  String toString() {
    return 'DeviceDTO(token: $token, platform: $platform)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeviceDTO &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(platform);

  @JsonKey(ignore: true)
  @override
  _$DeviceDTOCopyWith<_DeviceDTO> get copyWith =>
      __$DeviceDTOCopyWithImpl<_DeviceDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DeviceDTOToJson(this);
  }
}

abstract class _DeviceDTO extends DeviceDTO {
  const _DeviceDTO._() : super._();
  const factory _DeviceDTO(
      {@required String token, @required String platform}) = _$_DeviceDTO;

  factory _DeviceDTO.fromJson(Map<String, dynamic> json) =
      _$_DeviceDTO.fromJson;

  @override
  String get token;
  @override
  String get platform;
  @override
  @JsonKey(ignore: true)
  _$DeviceDTOCopyWith<_DeviceDTO> get copyWith;
}
