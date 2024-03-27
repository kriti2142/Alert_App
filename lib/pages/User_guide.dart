import 'package:flutter/material.dart';

class UserGuide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 122, 141, 246), // Set background color
        title: Container(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'User Guide',
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
                      'assets/images/user_guide.png', // Adjust image path as necessary
                      width: 100, // Adjust width as necessary
                      height: 100, // Adjust height as necessary
                    ),
                    SizedBox(width: 8), // Add space between the image and text
                    Expanded(
                      child: Text(
                        'Steps to Connect to SafetySync..',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0), // Add padding here
                child: Text(
                  '1. Turn on your jewelry device manually and make sure it is within range of your mobile device.',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0), // Add padding here
                child: Text(
                  '2. Open the SafetySYNC app on your mobile device.',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0), // Add padding here
                child: Text(
                  '3. Go to the settings or connect device section in the app.',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0), // Add padding here
                child: Text(
                  '4. Follow the instructions provided in the app to pair your jewelry device with the app.',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0), // Add padding here
                child: Text(
                  '5. Once the pairing process is complete, you should see a confirmation message indicating that the device is connected.',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0), // Add padding here
                child: Text(
                  '6. You can now use the SafetySYNC app to monitor and manage your jewelry device.',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
