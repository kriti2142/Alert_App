import 'package:flutter/material.dart';
import 'package:contacts_service/contacts_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AddEmergencyContactsScreen extends StatefulWidget {
  @override
  _AddEmergencyContactsScreenState createState() =>
      _AddEmergencyContactsScreenState();
}

class _AddEmergencyContactsScreenState
    extends State<AddEmergencyContactsScreen> {
  List<Contact> _contacts = [];
  List<Contact> _filteredContacts = [];
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _getContacts();
    _filteredContacts = []; // Initialize _filteredContacts as an empty list
  }

  Future<void> _getContacts() async {
    Iterable<Contact> contacts =
        await ContactsService.getContacts(withThumbnails: false);
    setState(() {
      _contacts = contacts.toList();
      _filteredContacts = _contacts; // Initialize filteredContacts with all contacts
    });
  }

  Future<void> _saveContactToFirestore(Contact contact) async {
    try {
      await _firestore.collection('emergency_contacts').add({
        'name': contact.displayName,
        'phone': contact.phones?.isNotEmpty == true
            ? contact.phones!.first.value
            : null,
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Contact saved to Firestore database.'),
        ),
      );
    } catch (error) {
      print('Error saving contact: $error');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error saving contact. Please try again later.'),
        ),
      );
    }
  }

  Future<void> _showSaveConfirmationDialog(Contact contact) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add to Emergency Contact List'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(
                    'Do you want to save ${contact.displayName} as an emergency contact?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Save'),
              onPressed: () {
                _saveContactToFirestore(contact);
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _filterContacts(String query) {
    setState(() {
      _filteredContacts = _contacts
          .where((contact) =>
              contact.displayName!.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Color.fromARGB(255, 122, 141, 246), // Set background color
        title: Container(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Add Emergency Contacts',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search by name...',
                prefixIcon: Icon(Icons.search),
              ),
              onChanged: (value) {
                _filterContacts(value);
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _filteredContacts.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_filteredContacts[index].displayName ?? ''),
                  subtitle: Text(_filteredContacts[index].phones?.isNotEmpty ==
                          true
                      ? _filteredContacts[index].phones!.first.value ?? ''
                      : 'No phone number'),
                  onTap: () {
                    _showSaveConfirmationDialog(_filteredContacts[index]);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
