import 'package:flutter/material.dart';

class ServicesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Services'),
        automaticallyImplyLeading: false, // Remove the back arrow
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(16.0),
        mainAxisSpacing: 16.0, // Add vertical spacing between boxes
        crossAxisSpacing: 16.0, // Add horizontal spacing between boxes
        children: [
          ServiceBox(
            title: 'Add Emergency Contacts',
            icon: Icons.contacts,
            onTap: () {
              // Navigate to Add Emergency Contacts screen
            },
          ),
          ServiceBox(
            title: 'Emergency Contacts List',
            icon: Icons.list,
            onTap: () {
              // Navigate to Emergency Contacts List screen
            },
          ),
          ServiceBox(
            title: 'Panic Gestures',
            icon: Icons.dangerous,
            onTap: () {
              // Navigate to Panic Gestures screen
            },
          ),
          ServiceBox(
            title: 'Saved Recordings',
            icon: Icons.library_music,
            onTap: () {
              // Navigate to Saved Recordings screen
            },
          ),
          ServiceBox(
            title: 'Helpline Numbers',
            icon: Icons.phone,
            onTap: () {
              // Navigate to Helpline Numbers screen
            },
          ),
        ],
      ),
    );
  }
}

class ServiceBox extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  const ServiceBox({
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 4.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 48.0,
              color: Theme.of(context).primaryColor,
            ),
            SizedBox(height: 16.0), // Add vertical space between icon and title
            Text(
              title,
              textAlign: TextAlign.center, // Center align text
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
