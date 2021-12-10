import 'package:auto_route/auto_route.dart';
import 'package:firebase_tests/core/bloc/login/login_bloc.dart';
import 'package:firebase_tests/core/bloc/notification/notification_creation_bloc.dart';
import 'package:firebase_tests/core/bloc/registration/registration_bloc.dart';
import 'package:firebase_tests/core/domain/service_locator/injection.dart';
import 'package:firebase_tests/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Landing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => getIt<LoginBloc>(),
        ),
        BlocProvider(
          create: (_) => getIt<RegistrationBloc>(),
        ),
        BlocProvider(
          create: (_) => getIt<NotificationCreationBloc>(),
        ),
      ],
      child: MaterialApp(
        builder: ExtendedNavigator(
          router: AppRouter(),
          initialRoute: Routes.splashScreen,
        ),
      ),
    );
  }
}
