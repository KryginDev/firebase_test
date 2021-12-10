import 'package:firebase_tests/core/data/dtos/user/user_dto.dart';
import 'package:firebase_tests/core/data/network/api_client.dart';
import 'package:firebase_tests/core/data/repository/auth/auth_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';

class MockFirebaseAuth extends Mock implements FirebaseAuth {
  @override
  User get currentUser => MockFirebaseUser();
}

class MockAuthResult extends Mock implements UserCredential {
  @override
  User get user => MockFirebaseUser();
}

class MockFirebaseUser extends Mock implements User {
  @override
  String get displayName => 'Test Name';

  @override
  String get uid => 'abc1234';
}

class MockFirebaseMessaging extends Mock implements FirebaseMessaging {}

void main() {
  final MockFirebaseAuth _auth = MockFirebaseAuth();
  final _fire = FakeFirebaseFirestore();
  final MockFirebaseMessaging _mess = MockFirebaseMessaging();
  final MockAuthResult _result = MockAuthResult();
  final AuthRepository _authRepo = AuthRepository(
    apiClient: ApiClient(
      _auth,
      _fire,
      _mess,
    ),
  );

  group(
    'sign in with email and password',
    () {
      test(
        "correct",
        () async {
          when(
            _auth.signInWithEmailAndPassword(
              email: 'email@gmail.com',
              password: '123456',
            ),
          ).thenAnswer((_) async => Future.value(_result));
          final UserDTO userDTO = await _authRepo.signInWithEmailAndPassword(
            'email@gmail.com',
            '123456',
          );
          expect(
            userDTO,
            const UserDTO(
              id: 'abc1234',
              name: 'Test Name',
              surname: 'Test Name',
            ),
          );
        },
      );
      test(
        "Sign in with email and password returns exception",
        () async {
          when(
            _auth.signInWithEmailAndPassword(
              email: 'email@gmail.com',
              password: '123456',
            ),
          ).thenThrow(
            FirebaseException(
              plugin: 'Error',
            ),
          );
          final UserDTO userDTO = await _authRepo.signInWithEmailAndPassword(
            'email@gmail.com',
            '123456',
          );
          expect(
            userDTO,
            null,
          );
        },
      );
    },
  );

  group(
    'register with email and password',
    () {
      test(
        "correct",
        () async {
          when(
            _auth.createUserWithEmailAndPassword(
              email: 'email@gmail.com',
              password: '123456',
            ),
          ).thenAnswer(
            (_) => Future.value(
              _result,
            ),
          );
          final UserDTO userDTO = await _authRepo.registerWithEmailAndPassword(
            'email@gmail.com',
            '123456',
            'Test Name',
            'Test Name',
          );
          expect(
            userDTO,
            const UserDTO(
              id: 'abc1234',
              name: 'Test Name',
              surname: 'Test Name',
            ),
          );
        },
      );
      test(
        "register returns exception",
        () async {
          when(
            _auth.signInWithEmailAndPassword(
              email: 'email@gmail.com',
              password: '123456',
            ),
          ).thenThrow(
            FirebaseException(
              plugin: 'Error',
            ),
          );
          final UserDTO userDTO = await _authRepo.signInWithEmailAndPassword(
            'email@gmail.com',
            '123456',
          );
          expect(
            userDTO,
            null,
          );
        },
      );
    },
  );
}
