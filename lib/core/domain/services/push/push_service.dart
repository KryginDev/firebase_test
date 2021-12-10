import 'package:auto_route/auto_route.dart';
import 'package:firebase_tests/core/data/repository/push/push_repository.dart';
import 'package:injectable/injectable.dart';

enum AppState {
  foreground,
  background,
  terminated,
}

abstract class IPushService {
  Future<void> init(String userId);

  Future<String> requestPermission(String userId);
}

@LazySingleton(as: IPushService)
class PushService implements IPushService {
  IPushRepository repository;

  PushService({
    @required this.repository,
  });

  @override
  Future<void> init(String userId) async {
    await requestPermission(userId);
    repository.configure();
  }

  @override
  Future<String> requestPermission(String userId) async {
    return repository.requestPermission(userId);
  }
}
