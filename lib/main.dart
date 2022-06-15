import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:bytebank/screens/dashboard.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await firebase.initializeApp();

  runApp(const BytebankApp());
}

class BytebankApp extends StatelessWidget {
  const BytebankApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.green.shade900,
          colorScheme:
            ColorScheme.fromSwatch().copyWith(
              primary: Colors.green.shade900,
              secondary: Colors.blueAccent.shade700,
            ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
              backgroundColor:
                MaterialStateProperty.all<Color>(Colors.blueAccent.shade700),
            ),
          ),
        ),
        home: const Dashboard(),
    );
  }
}
