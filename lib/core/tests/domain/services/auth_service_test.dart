import 'package:firebase_tests/core/data/dtos/user/user_dto.dart';
import 'package:firebase_tests/core/data/repository/auth/auth_repository.dart';
import 'package:firebase_tests/core/domain/models/user/user.dart';
import 'package:firebase_tests/core/domain/services/auth/auth_service.dart';
import 'package:test/test.dart';
import 'package:mockito/mockito.dart';

class MockRepository extends Mock implements IAuthRepository {}

void main() {
  final MockRepository _repo = MockRepository();
  final AuthService _service = AuthService(repository: _repo);

  group(
    'sign in',
    () {
      test(
        'correct',
        () async {
          when(
            _repo.signInWithEmailAndPassword(
              'test@gmail.com',
              '123456',
            ),
          ).thenAnswer(
            (_) async => Future.value(
              const UserDTO(
                email: 'test@gmail.com',
                id: '12',
                name: 'Vlad',
                surname: 'Kryhin',
              ),
            ),
          );
          final UserModel userModel = await _service.signIn(
            'test@gmail.com',
            "123456",
          );
          expect(
            userModel,
            const UserModel(
              email: 'test@gmail.com',
              id: '12',
              name: 'Vlad',
              surname: 'Kryhin',
            ),
          );
        },
      );
      test(
        'error',
        () async {
          when(
            _repo.signInWithEmailAndPassword(
              'test@gmail.com',
              '123456',
            ),
          ).thenThrow(
            Exception(
              'error',
            ),
          );
          final UserModel userModel = await _service.signIn(
            'test@gmail.com',
            "123456",
          );
          expect(
            userModel,
            null,
          );
        },
      );
    },
  );

  group(
    'sign up',
    () {
      test(
        'correct',
        () async {
          when(
            _repo.registerWithEmailAndPassword(
              'test@gmail.com',
              '123456',
              'Vlad',
              'Kryhin',
            ),
          ).thenAnswer(
            (_) async => Future.value(
              const UserDTO(
                email: 'test@gmail.com',
                id: '12',
                name: 'Vlad',
                surname: 'Kryhin',
              ),
            ),
          );
          final UserModel userModel = await _service.signUp(
            'test@gmail.com',
            "123456",
            'Vlad',
            'Kryhin',
          );
          expect(
            userModel,
            const UserModel(
              email: 'test@gmail.com',
              id: '12',
              name: 'Vlad',
              surname: 'Kryhin',
            ),
          );
        },
      );
      test(
        'error',
        () async {
          when(
            _repo.registerWithEmailAndPassword(
              'test@gmail.com',
              '123456',
              'Vlad',
              'Kryhin',
            ),
          ).thenThrow(
            Exception(
              'error',
            ),
          );
          final UserModel userModel = await _service.signUp(
            'test@gmail.com',
            "123456",
            'Vlad',
            'Kryhin',
          );
          expect(
            userModel,
            null,
          );
        },
      );
    },
  );
}
