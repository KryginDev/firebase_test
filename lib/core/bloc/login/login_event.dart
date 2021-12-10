part of 'login_bloc.dart';

@freezed
abstract class LoginEvent with _$LoginEvent {
  const factory LoginEvent.getUser({
    String email,
    String password,
  }) = _GetUser;
}
