import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class ApiClient {
  final FirebaseAuth _auth;
  final FirebaseFirestore _data;
  final FirebaseMessaging _messaging;

  ApiClient(
    this._auth,
    this._data,
    this._messaging,
  );

  FirebaseAuth get auth => _auth;

  FirebaseFirestore get data => _data;

  FirebaseMessaging get message => _messaging;
}
