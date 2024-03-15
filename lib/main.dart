import 'package:firebase_connect/forgot_password.dart';
import 'package:firebase_connect/login.dart';
import 'package:firebase_connect/signup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_connect/home.dart'; // Import the Home widget
import 'package:firebase_connect/screens/welcome.dart'; // Import the WelcomePage widget from the screens folder

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SafetySYNC',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/welcome', // Set initial route to welcome page
      routes: {
        '/welcome': (context) => WelcomePage(),
        '/login': (context) => LogIn(),
        '/signup': (context) => SignUp(),
        '/forgotPassword': (context) => ForgotPassword(),
        '/home': (context) => Home(), // Add route for the Home widget
      },
    );
  }
}
