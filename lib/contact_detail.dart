import 'package:flutter/material.dart';
import 'models/contact_model.dart';

class ContactDetail extends StatelessWidget {
  final String id;

  const ContactDetail({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    final Contact user = contacts.firstWhere((contact) => contact.id == id);

    return Card(
        child: Column(
      children: [
        Image.network(user.imageURL),
        Text(user.name),
        Text(user.email),
        Text(user.phoneNumber),
        Text(user.address),
        ElevatedButton(onPressed: () => Navigator.of(context).pop(), child: const Text('Indietro'))
      ],
    ));
  }
}
