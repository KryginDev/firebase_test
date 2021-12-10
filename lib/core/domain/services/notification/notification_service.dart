import 'package:firebase_tests/core/data/repository/notification/notification_repository.dart';
import 'package:firebase_tests/core/domain/models/notification/notification.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

abstract class ICreateNotificationService {
  Future<NotificationModel> createNotification(
    String title,
    String description,
    DateTime time,
  );
}

@LazySingleton(as: ICreateNotificationService)
class CreateNotificationService implements ICreateNotificationService {
  final ICreateNotificationRepository repository;

  const CreateNotificationService({@required this.repository});

  @override
  Future<NotificationModel> createNotification(
    String title,
    String description,
    DateTime time,
  ) async {
    final result = await repository.addNotification(
      title,
      description,
      time,
    );
    return result;
  }
}
