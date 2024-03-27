import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class EmergencyContactsListScreen extends StatefulWidget {
  @override
  _EmergencyContactsListScreenState createState() =>
      _EmergencyContactsListScreenState();
}

class _EmergencyContactsListScreenState
    extends State<EmergencyContactsListScreen> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  late List<Map<String, dynamic>> _contacts = [];
  late List<Map<String, dynamic>> _filteredContacts = [];

  @override
  void initState() {
    super.initState();
    _getContacts();
  }

  Future<void> _getContacts() async {
    QuerySnapshot snapshot =
        await _firestore.collection('emergency_contacts').get();
    setState(() {
      _contacts = snapshot.docs
          .map((doc) => {
                'id': doc.id,
                ...doc.data() as Map<String, dynamic>,
              })
          .toList();
      _filteredContacts = _contacts;
    });
  }

  Future<void> _deleteContact(String documentId) async {
    try {
      await _firestore.collection('emergency_contacts').doc(documentId).delete();
      setState(() {
        _contacts.removeWhere((contact) => contact['id'] == documentId);
        _filteredContacts.removeWhere((contact) => contact['id'] == documentId);
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Contact removed from the emergency list.'),
        ),
      );
    } catch (error) {
      print('Error deleting contact: $error');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error removing contact. Please try again later.'),
        ),
      );
    }
  }

  void _filterContacts(String query) {
    setState(() {
      if (_contacts != null) {
        _filteredContacts = _contacts.where((contact) {
          final name = contact['name'].toString().toLowerCase();
          return name.contains(query.toLowerCase());
        }).toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 122, 141, 246), // Set background color
        title: Container(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Emergency Contacts Screen',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search by name...',
                prefixIcon: Icon(Icons.search),
              ),
              onChanged: _filterContacts,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _filteredContacts.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_filteredContacts[index]['name'] ?? ''),
                  subtitle: Text(_filteredContacts[index]['phone'] ?? ''),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      _deleteContact(_filteredContacts[index]['id']);
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
