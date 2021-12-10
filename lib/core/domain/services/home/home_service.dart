import 'package:auto_route/auto_route.dart';
import 'package:firebase_tests/core/data/repository/home/home_repository.dart';
import 'package:firebase_tests/core/domain/models/notification/notification.dart';
import 'package:injectable/injectable.dart';

abstract class IHomeService {
  Stream<List<NotificationModel>> getNotifications(String userId);
}

@LazySingleton(as: IHomeService)
class HomeService implements IHomeService {
  IHomeRepository repository;

  HomeService({@required this.repository});

  @override
  Stream<List<NotificationModel>> getNotifications(String userId) async* {
    final result = repository.getNotifications(userId);
    yield* result.map(
      (event) => event
          .map(
            (e) => NotificationModel.fromDto(dto: e),
          )
          .toList(),
    );
  }
}
