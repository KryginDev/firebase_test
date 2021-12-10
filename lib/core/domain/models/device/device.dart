import 'package:firebase_tests/core/data/dtos/device/device_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'device.freezed.dart';

@freezed
abstract class Device implements _$Device {
  const factory Device({
    String token,
    String platform,
  }) = _Device;

  const Device._();

  factory Device.fromDTO(DeviceDTO deviceDTO) => Device(
        token: deviceDTO.token,
        platform: deviceDTO.platform,
      );
}
