import 'package:firebase_tests/core/utils/timestamp_conventer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_dto.freezed.dart';
part 'notification_dto.g.dart';

@freezed
abstract class NotificationDTO implements _$NotificationDTO {
  const factory NotificationDTO({
    String id,
    String title,
    String description,
    @TimestampConverter() DateTime time,
  }) = _NotificationDTO;
  const NotificationDTO._();
  factory NotificationDTO.fromJson(Map<String, dynamic> json) =>
      _$NotificationDTOFromJson(json);
}

