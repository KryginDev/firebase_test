// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:firebase_messaging/firebase_messaging.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../bloc/home/home_bloc.dart' as _i20;
import '../../bloc/login/login_bloc.dart' as _i17;
import '../../bloc/notification/notification_creation_bloc.dart' as _i18;
import '../../bloc/registration/registration_bloc.dart' as _i19;
import '../../data/network/api_client.dart' as _i6;
import '../../data/repository/auth/auth_repository.dart' as _i7;
import '../../data/repository/home/home_repository.dart' as _i11;
import '../../data/repository/notification/notification_repository.dart' as _i9;
import '../../data/repository/push/push_repository.dart' as _i13;
import '../../data/repository/user/user_repository.dart' as _i15;
import '../services/auth/auth_service.dart' as _i8;
import '../services/home/home_service.dart' as _i12;
import '../services/notification/notification_service.dart' as _i10;
import '../services/push/push_service.dart' as _i14;
import '../services/user/user_service.dart' as _i16;
import 'firebase_injectable_module.dart'
    as _i21; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.factory<_i4.FirebaseFirestore>(() => firebaseInjectableModule.fireStore);
  gh.factory<_i5.FirebaseMessaging>(() => firebaseInjectableModule.message);
  gh.lazySingleton<_i6.ApiClient>(() => _i6.ApiClient(get<_i3.FirebaseAuth>(),
      get<_i4.FirebaseFirestore>(), get<_i5.FirebaseMessaging>()));
  gh.lazySingleton<_i7.IAuthRepository>(
      () => _i7.AuthRepository(apiClient: get<_i6.ApiClient>()));
  gh.lazySingleton<_i8.IAuthService>(
      () => _i8.AuthService(repository: get<_i7.IAuthRepository>()));
  gh.lazySingleton<_i9.ICreateNotificationRepository>(
      () => _i9.CreateNotificationRepository(apiClient: get<_i6.ApiClient>()));
  gh.lazySingleton<_i10.ICreateNotificationService>(() =>
      _i10.CreateNotificationService(
          repository: get<_i9.ICreateNotificationRepository>()));
  gh.lazySingleton<_i11.IHomeRepository>(
      () => _i11.HomeRepository(apiClient: get<_i6.ApiClient>()));
  gh.lazySingleton<_i12.IHomeService>(
      () => _i12.HomeService(repository: get<_i11.IHomeRepository>()));
  gh.lazySingleton<_i13.IPushRepository>(
      () => _i13.PushRepository(apiClient: get<_i6.ApiClient>()));
  gh.lazySingleton<_i14.IPushService>(
      () => _i14.PushService(repository: get<_i13.IPushRepository>()));
  gh.lazySingleton<_i15.IUserRepository>(
      () => _i15.UserRepository(apiClient: get<_i6.ApiClient>()));
  gh.lazySingleton<_i16.IUserService>(
      () => _i16.UserService(userRepository: get<_i15.IUserRepository>()));
  gh.factory<_i17.LoginBloc>(() => _i17.LoginBloc(get<_i8.IAuthService>()));
  gh.factory<_i18.NotificationCreationBloc>(() =>
      _i18.NotificationCreationBloc(get<_i10.ICreateNotificationService>()));
  gh.factory<_i19.RegistrationBloc>(
      () => _i19.RegistrationBloc(get<_i8.IAuthService>()));
  gh.factory<_i20.HomeBloc>(() => _i20.HomeBloc(
      get<_i8.IAuthService>(),
      get<_i12.IHomeService>(),
      get<_i14.IPushService>(),
      get<_i16.IUserService>()));
  return get;
}

class _$FirebaseInjectableModule extends _i21.FirebaseInjectableModule {}
