import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 90, // Height of the first colored band
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.lightBlue, Colors.orange], // Gradient colors
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Welcome to SafetySYNC!',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold, // Make it bold
                    fontStyle: FontStyle.italic, // Make it italic
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Protected Paths, Lasting Laughs.',
                  style: TextStyle(fontSize: 16, color: const Color.fromARGB(255, 34, 52, 61)),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom + 20), // Adjust the padding to move the image upwards
                  child: Image.asset(
                    'assets/images/logo.png',
                    height: 350,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/login');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, // Set background color to blue
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15), // Set button padding
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)), // Set button border radius
                  ),
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white, // Set text color to white
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 90, // Height of the second colored band
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.yellow, Colors.green], // Gradient colors
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
