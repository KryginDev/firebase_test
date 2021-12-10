part of 'notification_creation_bloc.dart';

@freezed
abstract class NotificationCreationState with _$NotificationCreationState {
  const factory NotificationCreationState.initial() = _Initial;
  const factory NotificationCreationState.loading() = _Loading;
  const factory NotificationCreationState.loaded({
    NotificationModel model,
  }) = _Loaded;
  const factory NotificationCreationState.failure({String errorMessage}) =
      _Failure;
}
