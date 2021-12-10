import 'package:firebase_tests/core/data/dtos/device/device_dto.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
abstract class UserDTO implements _$UserDTO {
  const factory UserDTO({
    String id,
    String name,
    String surname,
    String email,
    List<DeviceDTO> device,
  }) = _UserDTO;

  const UserDTO._();

  factory UserDTO.fromJson(Map<String, dynamic> json) =>
      _$UserDTOFromJson(json);

  factory UserDTO.fromFirebaseUser(User user) => UserDTO(
        id: user.uid,
        name: user.displayName,
        surname: user.displayName,
      );
}
