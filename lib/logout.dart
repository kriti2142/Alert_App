import 'package:flutter/material.dart';
import 'package:firebase_connect/login.dart'; // Import your login screen

void logout(BuildContext context) {
  // Navigate to the login screen
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LogIn()));
  // You can add additional logic here such as clearing user session, etc.
}
