import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 122, 141, 246), // Set background color
        title: Container(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'About',
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
                      'assets/images/safety.jpeg', // Adjust image path as necessary
                      width: 100, // Adjust width as necessary
                      height: 100, // Adjust height as necessary
                    ),
                    SizedBox(width: 8), // Add space between the image and text
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'SafetySYNC',
                            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Protected Paths, Lasting Laughs',
                            style: TextStyle(fontSize: 16, color: const Color.fromARGB(255, 58, 56, 56)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Version 1.0.0',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'SafetySYNC is a safety application designed to help users stay safe in various situations.\n It is dedicated to revolutionizing safety management for individuals, families, etc.\n\nOur mission is to empower people with innovative tools and resources to ensure their safety and security in an increasingly complex world. ',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'With this user-friendly mobile application we strive to make safety accessible and convenient for everyone. From real-time location tracking and emergency alert systems to other customizable safety features.\n\nWe believe that everyone deserves to feel secure and prepared, and we strive to achieve this vision through continuous innovation and unwavering dedication to our mission.\n\nJoin us on our journey to create safer communities and a brighter future for generations to come. Together, we can make a difference in the world of safety. .',
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
