import 'package:flutter/material.dart';

class PanicGesturesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor:  Color.fromARGB(255, 122, 141, 246), // Set background color
        title: Container(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'About Panic Gestures',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/PanicLogo.png', // Adjust image path as necessary
                      width: 100, // Adjust width as necessary
                      height: 100, // Adjust height as necessary
                    ),
                    SizedBox(width: 8), // Add space between the image and text
                    Expanded(
                      child: Text(
                        'Understanding Panic Gestures for Safety..',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8), // Add space between the image and text
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Panic gestures are non-verbal cues used to signal distress or danger in emergency situations. It\'s crucial to understand and use them correctly to ensure effective communication and response.',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Below is the demonstration for both the correct and incorrect ways to perform the Panic Gestures.',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  '    ~  Open Palm faced outwards.',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/palm_correct.jpeg', // Adjust image path as necessary
                          width: 150, // Adjust width as necessary
                          height: 200, // Adjust height as necessary
                        ),
                        Icon(
                          Icons.check_circle,
                          color: Colors.green,
                          size: 50,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/palm_incorrect.jpeg', // Adjust image path as necessary
                          width: 200, // Adjust width as necessary
                          height: 200, // Adjust height as necessary
                        ),
                        Icon(
                          Icons.cancel,
                          color: Colors.red,
                          size: 50,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  '    ~  Thumbs Up.',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/thumb_correct.jpeg', // Adjust image path as necessary
                          width: 150, // Adjust width as necessary
                          height: 200, // Adjust height as necessary
                        ),
                        Icon(
                          Icons.check_circle,
                          color: Colors.green,
                          size: 50,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/thumb_incorrect.jpeg', // Adjust image path as necessary
                          width: 200, // Adjust width as necessary
                          height: 200, // Adjust height as necessary
                        ),
                        Icon(
                          Icons.cancel,
                          color: Colors.red,
                          size: 50,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  '    ~  V Sign',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/Vsign_correct.jpeg', // Adjust image path as necessary
                          width: 150, // Adjust width as necessary
                          height: 200, // Adjust height as necessary
                        ),
                        Icon(
                          Icons.check_circle,
                          color: Colors.green,
                          size: 50,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/Vsign_incorrect.jpeg', // Adjust image path as necessary
                          width: 200, // Adjust width as necessary
                          height: 200, // Adjust height as necessary
                        ),
                        Icon(
                          Icons.cancel,
                          color: Colors.red,
                          size: 50,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}