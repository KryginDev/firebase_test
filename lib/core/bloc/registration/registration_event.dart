part of 'registration_bloc.dart';

@freezed
abstract class RegistrationEvent with _$RegistrationEvent {
  const factory RegistrationEvent.createUser({
    String email,
    String password,
    String name,
    String surname,
  }) = _CreateUser;
}
