import 'package:auto_route/auto_route.dart';
import 'package:firebase_tests/core/data/dtos/notification/notification_dto.dart';
import 'package:firebase_tests/core/data/network/api_client.dart';
import 'package:firebase_tests/core/domain/defaults/const.dart';
import 'package:firebase_tests/core/domain/models/notification/notification.dart';
import 'package:injectable/injectable.dart';

abstract class ICreateNotificationRepository {
  Future<NotificationModel> addNotification(
    String title,
    String description,
    DateTime time,
  );
}

@LazySingleton(as: ICreateNotificationRepository)
class CreateNotificationRepository extends ICreateNotificationRepository {
  ApiClient apiClient;

  CreateNotificationRepository({@required this.apiClient});

  @override
  Future<NotificationModel> addNotification(
    String title,
    String description,
    DateTime time,
  ) async {
    final documentReference = apiClient.data
        .collection(AppConst.usersCollection)
        .doc(apiClient.auth.currentUser.uid)
        .collection(AppConst.notificationCollection)
        .doc();
    final dto = NotificationDTO(
      title: title,
      description: description,
      time: time,
      id: documentReference.id,
    );
    documentReference.set(dto.toJson());
    return NotificationModel.fromDto(dto: dto);
  }
}
