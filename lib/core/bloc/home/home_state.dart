part of 'home_bloc.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loading() = _Loading;
  const factory HomeState.loaded({List<NotificationModel> notifications}) =
      _Loaded;
  const factory HomeState.failure({String message}) = _Failure;
}
