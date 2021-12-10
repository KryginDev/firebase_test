import 'package:firebase_tests/core/data/dtos/user/user_dto.dart';
import 'package:firebase_tests/core/domain/models/device/device.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
abstract class UserModel implements _$UserModel {
  const factory UserModel({
    String id,
    String name,
    String surname,
    String email,
    List<Device> devices,
  }) = _UserModel;
  const UserModel._();

  factory UserModel.fromDto(UserDTO userDTO) => UserModel(
    id: userDTO.id,
    name: userDTO.name,
    surname: userDTO.surname,
    email: userDTO.email,
  );
}
