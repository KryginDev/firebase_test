import 'package:firebase_tests/core/domain/models/device/device.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_dto.freezed.dart';
part 'device_dto.g.dart';

@freezed
abstract class DeviceDTO implements _$DeviceDTO {
  const factory DeviceDTO({
    @required String token,
    @required String platform,
  }) = _DeviceDTO;

  const DeviceDTO._();

  factory DeviceDTO.fromJson(Map<String, dynamic> json) =>
      _$DeviceDTOFromJson(json);

  factory DeviceDTO.fromEntity(Device device) {
    return DeviceDTO(
      token: device.token,
      platform: device.platform,
    );
  }
}
