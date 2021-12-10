import 'package:auto_route/auto_route_annotations.dart';
import 'package:firebase_tests/presentation/add_notification/add_screen.dart';
import 'package:firebase_tests/presentation/auth/login_screen.dart';
import 'package:firebase_tests/presentation/auth/register_screen.dart';
import 'package:firebase_tests/presentation/home/home_screen.dart';
import 'package:firebase_tests/presentation/splash_screen.dart';

@AdaptiveAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(
      page: SplashScreen,
      initial: true,
    ),
    AutoRoute(
      page: LoginScreen,
    ),
    AutoRoute(
      page: RegisterScreen,
    ),
    AutoRoute(
      page: HomeScreen,
    ),
    AutoRoute(
      page: AddNotificationScreen,
    ),
  ],
)
class $AppRouter {}
