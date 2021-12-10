
import 'package:auto_route/auto_route.dart';
import 'package:firebase_tests/core/data/dtos/notification/notification_dto.dart';
import 'package:firebase_tests/core/data/network/api_client.dart';
import 'package:firebase_tests/core/domain/defaults/const.dart';
import 'package:injectable/injectable.dart';

abstract class IHomeRepository {
  Stream<List<NotificationDTO>> getNotifications(String userId);
}

@LazySingleton(as: IHomeRepository)
class HomeRepository extends IHomeRepository {
  ApiClient apiClient;

  HomeRepository({@required this.apiClient});

  @override
  Stream<List<NotificationDTO>> getNotifications(String userId) async* {
    final userDocument = apiClient.data
        .collection(AppConst.usersCollection)
        .doc(userId)
        .collection(AppConst.notificationCollection)
        .snapshots();
    yield* userDocument.map(
      (e) => e.docs
          .map(
            (x) => NotificationDTO.fromJson(
              x.data(),
            ),
          )
          .toList(),
    );
  }
}
