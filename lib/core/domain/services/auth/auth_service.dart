import 'package:firebase_tests/core/data/repository/auth/auth_repository.dart';
import 'package:firebase_tests/core/domain/models/user/user.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

abstract class IAuthService {
  UserModel userModel;

  Future<UserModel> signIn(
    String email,
    String password,
  );

  Future<UserModel> signUp(
    String email,
    String password,
    String name,
    String surname,
  );
}

@LazySingleton(as: IAuthService)
class AuthService implements IAuthService {
  final IAuthRepository repository;

  AuthService({@required this.repository});

  @override
  Future<UserModel> signIn(String email, String password) async {
    try {
      final result = await repository.signInWithEmailAndPassword(
        email,
        password,
      );
      final userDTO = result;
      final UserModel userModel = UserModel.fromDto(userDTO);
      this.userModel = userModel;
      return userModel;
    } on Exception {
      return null;
    }
  }

  @override
  Future<UserModel> signUp(
      String email, String password, String name, String surname) async {
    try {
      final result = await repository.registerWithEmailAndPassword(
        email,
        password,
        name,
        surname,
      );
      final userDTO = result;
      final UserModel userModel = UserModel.fromDto(userDTO);
      this.userModel = userModel;
      return userModel;
    } on Exception{
      return null;
    }
  }

  @override
  UserModel userModel;
}
