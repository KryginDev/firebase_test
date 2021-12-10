import 'dart:async';
import 'dart:io';
import 'package:firebase_tests/core/domain/models/notification/notification.dart';
import 'package:firebase_tests/core/domain/services/auth/auth_service.dart';
import 'package:firebase_tests/core/domain/services/home/home_service.dart';
import 'package:firebase_tests/core/domain/services/push/push_service.dart';
import 'package:firebase_tests/core/domain/services/user/user_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_bloc.freezed.dart';

part 'home_state.dart';

part 'home_event.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final IAuthService authService;
  final IHomeService homeService;
  final IPushService pushService;
  final IUserService userService;

  HomeBloc(
    this.authService,
    this.homeService,
    this.pushService,
    this.userService,
  ) : super(
          const HomeState.initial(),
        );
  StreamSubscription _subscription;

  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {
    yield* event.map(
      watchNotifications: (e) async* {
        yield const HomeState.loading();
        await _subscription?.cancel();
        _subscription =
            homeService.getNotifications(authService.userModel.id).listen(
                  (event) => add(
                    HomeEvent.notificationsReceived(notificationsList: event),
                  ),
                );
      },
      error: (e) async* {
        yield const HomeState.loading();
        await _subscription?.cancel();
        _subscription =
            homeService.getNotifications(authService.userModel.id).listen(
                  (event) => add(
                    HomeEvent.notificationsReceived(notificationsList: event),
                  ),
                );
      },
      notificationsReceived: (e) async* {
        yield HomeState.loaded(notifications: e.notificationsList);
      },
      requestPermission: (_) async* {
        final token =
            await pushService.requestPermission(authService.userModel.id);
        if (token.isNotEmpty) {
          userService.updateUserInfo(
            authService.userModel.id,
            token,
            Platform.operatingSystem,
          );
        }
      },
    );
  }
}
