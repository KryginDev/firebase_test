import 'package:firebase_tests/core/domain/models/user/user.dart';
import 'package:firebase_tests/core/domain/services/auth/auth_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'registration_bloc.freezed.dart';
part 'registration_event.dart';
part 'registration_state.dart';

@injectable
class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  IAuthService authService;

  RegistrationBloc(this.authService)
      : super(
          const RegistrationState.initial(),
        );

  @override
  Stream<RegistrationState> mapEventToState(RegistrationEvent event) =>
      event.when(createUser: _createUser);

  Stream<RegistrationState> _createUser(
    String email,
    String password,
    String name,
    String surname,
  ) async* {
    try {
      yield const RegistrationState.loading();
      final result = await authService.signUp(
        email,
        password,
        name,
        surname,
      );
      yield RegistrationState.loaded(
        user: result,
      );
    } catch (error) {
      yield RegistrationState.failure(
        errorMessage: error.toString(),
      );
    }
  }
}
