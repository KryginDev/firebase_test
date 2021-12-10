import 'package:firebase_tests/core/data/network/api_client.dart';
import 'package:firebase_tests/core/domain/services/push/push_service.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

abstract class IPushRepository {
  Future<String> requestPermission(String userId);

  Future<void> configure();
}

@LazySingleton(as: IPushRepository)
class PushRepository extends IPushRepository {
  ApiClient apiClient;

  PushRepository({
    @required this.apiClient,
  });

  @override
  Future<String> requestPermission(String userId) async {
    final NotificationSettings settings =
        await apiClient.message.requestPermission();
    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      return apiClient.message.getToken();
    }
    return null;
  }

  @override
  Future<void> configure() async {
    await apiClient.message.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      _showForegroundNotificationInAndroid(message);
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      _handleNotification(
        message: message.data,
        appState: AppState.foreground,
      );
    });

    final RemoteMessage initialMessage =
        await apiClient.message.getInitialMessage();

    if (initialMessage != null) {
      _handleNotification(
        message: initialMessage.data,
        appState: AppState.terminated,
      );
    }
  }

  Future<void> _showForegroundNotificationInAndroid(
    RemoteMessage message,
  ) async {}

  Future<void> _handleNotification({
    Map<String, dynamic> message,
    AppState appState,
  }) async {}
}
