import 'package:flutter/material.dart';
import 'package:firebase_connect/screens/drawer.dart'; // Import the drawer screen
import 'package:firebase_connect/screens/services.dart'; // Import your services screen

class Home extends StatefulWidget {
  const Home({Key? key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HOME"),
        centerTitle: true,
        backgroundColor:  Color.fromARGB(255, 122, 141, 246),// Set background color of the app bar
      ),
      drawer: AppDrawer(), // Use the AppDrawer widget
      body: ServicesScreen(), // Display the services screen
    );
  }
}
