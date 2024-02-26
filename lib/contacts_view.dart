import 'package:flutter/material.dart';
import 'package:flutter_example/models/contact_model.dart';
import 'package:go_router/go_router.dart';

class ContactsView extends StatelessWidget {
  const ContactsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: [
      ...contacts.map((contact) => GestureDetector(
          onTap: () => context.go('/contacts/${contact.id}'),
          child: Card(
              child: Row(
            children: [Image.network(contact.imageURL), Text(contact.name)],
          ))))
    ]));
  }
}
