part of 'registration_bloc.dart';

@freezed
abstract class RegistrationState with _$RegistrationState {
  const factory RegistrationState.initial() = _Initial;
  const factory RegistrationState.loading() = _Loading;
  const factory RegistrationState.failure({String errorMessage}) = _Failure;
  const factory RegistrationState.loaded({UserModel user}) = _Loaded;
}
