part of 'login_bloc.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loading() = _Loading;
  const factory LoginState.failure({String errorMessage}) = _Failure;
  const factory LoginState.loaded({UserModel user}) = _Loaded;
}
