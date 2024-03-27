import 'package:flutter/material.dart';

class HelplineNumbersPage extends StatelessWidget {
  final List<Map<String, dynamic>> helplineNumbers = [
    {'name': 'Police', 'number': '100', 'icon': Icons.local_police},
    {'name': 'Fire Department', 'number': '101', 'icon': Icons.fire_extinguisher},
    {'name': 'Ambulance', 'number': '102', 'icon': Icons.local_hospital},
    {'name': 'Emergency Disaster Management', 'number': '108', 'icon': Icons.warning},
    {'name': 'Women Helpline', 'number': '1091', 'icon': Icons.female},
    {'name': 'Child Helpline', 'number': '1098', 'icon': Icons.child_friendly},
    {'name': 'Senior Citizens Helpline', 'number': '1090', 'icon': Icons.accessibility},
    {'name': 'Railway Helpline', 'number': '182', 'icon': Icons.train},
    // Add more helpline numbers as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 122, 141, 246), // Set background color
        title: Container(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Helpline Numbers',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/numbers.jpeg', // Adjust image path as necessary
                    width: 100, // Adjust width as necessary
                    height: 100, // Adjust height as necessary
                  ),
                  SizedBox(width: 8), // Add space between the image and text
                  Expanded(
                    child: Text(
                      'Information About Helpline Numbers',
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
                'Following are the Emergency Helpline Numbers:',
                style: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(height: 16),
            ListView.builder(
              shrinkWrap: true,
              itemCount: helplineNumbers.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  child: Row(
                    children: [
                      Icon(
                        helplineNumbers[index]['icon'],
                        size: 32,
                      ),
                      SizedBox(width: 8),
                      Text(
                        helplineNumbers[index]['name'],
                        style: TextStyle(fontSize: 18),
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Icon(Icons.phone),
                          SizedBox(width: 4),
                          Text(
                            helplineNumbers[index]['number'],
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
