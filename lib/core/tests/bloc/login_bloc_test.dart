import 'package:firebase_tests/core/bloc/login/login_bloc.dart';
import 'package:firebase_tests/core/domain/models/user/user.dart';
import 'package:firebase_tests/core/domain/services/auth/auth_service.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:test/test.dart';
import 'package:mockito/mockito.dart';



class MockService extends Mock implements IAuthService {}

void main() {
  group(
    'login bloc',
        () {
  IAuthService service;
  LoginBloc bloc;
  setUpAll(
    () {
      service = MockService();
      bloc = LoginBloc(service);
      },
  );

      blocTest(
        'correct',
        build: () {
          when(
            service.signIn(
              'test@gmail.com',
              "123456",
            ),
          ).thenAnswer(
            (_) => Future.value(
              const UserModel(
                email: 'test@gmail.com',
                id: '12',
                name: 'Vlad',
                surname: 'Kryhin',
              ),
            ),
          );
          return bloc;
        },
        act: (bloc) => bloc.add(
          const LoginEvent.getUser(
            email: 'test@gmail.com',
            password: '123456',
          ),
        ),
        expect: () => [
          const LoginState.loading(),
          const LoginState.loaded(
            user: UserModel(
              email: 'test@gmail.com',
              id: '12',
              name: 'Vlad',
              surname: 'Kryhin',
            ),
          ),
        ],
      );
    },
  );
}
