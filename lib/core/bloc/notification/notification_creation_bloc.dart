import 'package:firebase_tests/core/domain/models/notification/notification.dart';
import 'package:firebase_tests/core/domain/services/notification/notification_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'notification_creation_bloc.freezed.dart';
part 'notification_creation_event.dart';
part 'notification_creation_state.dart';

@injectable
class NotificationCreationBloc
    extends Bloc<NotificationCreationEvent, NotificationCreationState> {
  ICreateNotificationService service;
  NotificationCreationBloc(this.service)
      : super(
          const NotificationCreationState.initial(),
        );

  @override
  Stream<NotificationCreationState> mapEventToState(
          NotificationCreationEvent event) =>
      event.when(notificationCreationEvent: _addEvent);

  Stream<NotificationCreationState> _addEvent(
    String title,
    String description,
    DateTime time,
  ) async* {
    try {
      yield const NotificationCreationState.loading();
      final result = await service.createNotification(
        title,
        description,
        time,
      );
      yield NotificationCreationState.loaded(
        model: result,
      );
    } catch (error) {
      yield NotificationCreationState.failure(
        errorMessage: error.toString(),
      );
    }
  }
}
