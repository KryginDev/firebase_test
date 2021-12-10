import 'package:auto_route/auto_route.dart';
import 'package:firebase_tests/core/data/repository/user/user_repository.dart';
import 'package:firebase_tests/core/domain/models/device/device.dart';
import 'package:injectable/injectable.dart';

abstract class IUserService {
  Future<void> updateUserInfo(
    String userId,
    String token,
    String platform,
  );
}

@LazySingleton(as: IUserService)
class UserService implements IUserService {
  IUserRepository userRepository;

  UserService({@required this.userRepository});

  @override
  Future<void> updateUserInfo(
    String userId,
    String token,
    String platform,
  ) async {
    final device = Device(
      token: token,
      platform: platform,
    );
    userRepository.updateDeviceInfo(
      userId,
      device,
    );
  }
}
