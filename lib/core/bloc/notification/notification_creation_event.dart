part of 'notification_creation_bloc.dart';

@freezed
abstract class NotificationCreationEvent with _$NotificationCreationEvent {
  const factory NotificationCreationEvent.notificationCreationEvent({
    String title,
    String description,
    DateTime time,
  }) = _NotificationCreationEvent;
}
