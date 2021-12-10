import 'package:firebase_tests/core/data/dtos/device/device_dto.dart';
import 'package:firebase_tests/core/data/network/api_client.dart';
import 'package:firebase_tests/core/domain/defaults/const.dart';
import 'package:firebase_tests/core/domain/models/device/device.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

abstract class IUserRepository {
  Future<void> updateDeviceInfo(
    String userId,
    Device device,
  );
}

@LazySingleton(as: IUserRepository)
class UserRepository extends IUserRepository {
  ApiClient apiClient;

  UserRepository({
    @required this.apiClient,
  });

  @override
  Future<void> updateDeviceInfo(
    String userId,
    Device device,
  ) async {
    apiClient.data.collection(AppConst.usersCollection).doc(userId).set(
      {
        'devices': [DeviceDTO.fromEntity(device).toJson(),],
      },
      SetOptions(
        merge: true,
      ),
    );
  }
}
