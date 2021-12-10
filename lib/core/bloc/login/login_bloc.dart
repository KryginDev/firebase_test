import 'package:firebase_tests/core/domain/models/user/user.dart';
import 'package:firebase_tests/core/domain/services/auth/auth_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  IAuthService authService;

  LoginBloc(this.authService)
      : super(
          const LoginState.initial(),
        );

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) =>
      event.when(getUser: _getUser);

  Stream<LoginState> _getUser(
    String email,
    String password,
  ) async* {
    try {
      yield const LoginState.loading();
      final result = await authService.signIn(
        email,
        password,
      );
      yield LoginState.loaded(
        user: result,
      );
    } catch (error) {
      yield LoginState.failure(
        errorMessage: error.toString(),
      );
    }
  }
}
