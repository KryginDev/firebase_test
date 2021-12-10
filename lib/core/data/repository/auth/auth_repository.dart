import 'package:firebase_tests/core/data/dtos/user/user_dto.dart';
import 'package:firebase_tests/core/data/network/api_client.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

abstract class IAuthRepository {
  Future<UserDTO> signInWithEmailAndPassword(
    String email,
    String password,
  );

  Future<UserDTO> registerWithEmailAndPassword(
    String email,
    String password,
    String name,
    String surname,
  );
}

@LazySingleton(as: IAuthRepository)
class AuthRepository extends IAuthRepository {
  ApiClient apiClient;

  AuthRepository({@required this.apiClient});

  @override
  Future<UserDTO> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      final UserCredential result =
          await apiClient.auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      final User user = result.user;
      return UserDTO.fromFirebaseUser(user);
    } on FirebaseException {
      return null;
    }
  }

  @override
  Future<UserDTO> registerWithEmailAndPassword(
      String email, String password, String name, String surname) async {
    try {
      final UserCredential result =
          await apiClient.auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      final User user = result.user;
      final String uid = apiClient.auth.currentUser.uid;
      final DocumentReference userRef =
          apiClient.data.collection('users').doc(uid);
      userRef.set({
        "name": name,
        "surname": surname,
        "uid": uid,
        "email": email,
      });
      return UserDTO.fromFirebaseUser(user);
    } on FirebaseException {
      return null;
    }
  }

  Future logOut() async {
    await apiClient.auth.signOut();
  }

  Stream<UserDTO> get currentUser {
    return apiClient.auth.authStateChanges().map(
          (User user) => user != null ? UserDTO.fromFirebaseUser(user) : null,
        );
  }
}
