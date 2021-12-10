// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'device.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$DeviceTearOff {
  const _$DeviceTearOff();

// ignore: unused_element
  _Device call({String token, String platform}) {
    return _Device(
      token: token,
      platform: platform,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Device = _$DeviceTearOff();

/// @nodoc
mixin _$Device {
  String get token;
  String get platform;

  @JsonKey(ignore: true)
  $DeviceCopyWith<Device> get copyWith;
}

/// @nodoc
abstract class $DeviceCopyWith<$Res> {
  factory $DeviceCopyWith(Device value, $Res Function(Device) then) =
      _$DeviceCopyWithImpl<$Res>;
  $Res call({String token, String platform});
}

/// @nodoc
class _$DeviceCopyWithImpl<$Res> implements $DeviceCopyWith<$Res> {
  _$DeviceCopyWithImpl(this._value, this._then);

  final Device _value;
  // ignore: unused_field
  final $Res Function(Device) _then;

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
abstract class _$DeviceCopyWith<$Res> implements $DeviceCopyWith<$Res> {
  factory _$DeviceCopyWith(_Device value, $Res Function(_Device) then) =
      __$DeviceCopyWithImpl<$Res>;
  @override
  $Res call({String token, String platform});
}

/// @nodoc
class __$DeviceCopyWithImpl<$Res> extends _$DeviceCopyWithImpl<$Res>
    implements _$DeviceCopyWith<$Res> {
  __$DeviceCopyWithImpl(_Device _value, $Res Function(_Device) _then)
      : super(_value, (v) => _then(v as _Device));

  @override
  _Device get _value => super._value as _Device;

  @override
  $Res call({
    Object token = freezed,
    Object platform = freezed,
  }) {
    return _then(_Device(
      token: token == freezed ? _value.token : token as String,
      platform: platform == freezed ? _value.platform : platform as String,
    ));
  }
}

/// @nodoc
class _$_Device extends _Device {
  const _$_Device({this.token, this.platform}) : super._();

  @override
  final String token;
  @override
  final String platform;

  @override
  String toString() {
    return 'Device(token: $token, platform: $platform)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Device &&
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
  _$DeviceCopyWith<_Device> get copyWith =>
      __$DeviceCopyWithImpl<_Device>(this, _$identity);
}

abstract class _Device extends Device {
  const _Device._() : super._();
  const factory _Device({String token, String platform}) = _$_Device;

  @override
  String get token;
  @override
  String get platform;
  @override
  @JsonKey(ignore: true)
  _$DeviceCopyWith<_Device> get copyWith;
}
