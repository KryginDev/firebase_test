part of 'home_bloc.dart';

@freezed
abstract class HomeEvent with _$HomeEvent {
  const factory HomeEvent.watchNotifications() = _WatchNotifications;
  const factory HomeEvent.error() =_Error;
  const factory HomeEvent.requestPermission() =_RequestPermission;
  const factory HomeEvent.notificationsReceived(
      {List<NotificationModel> notificationsList}) =_NotificationsReceived;
}