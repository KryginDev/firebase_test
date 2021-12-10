
import 'package:firebase_tests/core/data/dtos/notification/notification_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification.freezed.dart';

@freezed
abstract class NotificationModel implements _$NotificationModel {
  const factory NotificationModel({
    String id,
    String title,
    String description,
    DateTime time,
  }) = _NotificationModel;
  const NotificationModel._();

  factory NotificationModel.fromDto({@required NotificationDTO dto}) {
    return NotificationModel(
      id: dto.id,
      title: dto.title,
      description: dto.description,
      time: dto.time,
    );
  }
}
