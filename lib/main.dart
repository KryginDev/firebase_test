import 'package:firebase_tests/core/domain/service_locator/injection.dart';
import 'package:firebase_tests/landing.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  configureDependencies();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    BenchApp(),
  );
}

class BenchApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Landing();
  }
}
