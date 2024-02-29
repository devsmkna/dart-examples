import 'package:flutter/material.dart';
import 'package:flutter_example/_models/contact_model.dart';
import 'package:go_router/go_router.dart';
import '../../_widgets/contact_image.dart';

class ContactViewItem extends StatelessWidget {
  final Contact contact;

  const ContactViewItem({super.key, required this.contact});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ContactImage(
        imageUrl: contact.imageURL,
        size: 50,
      ),
      title: Text(contact.name),
      onTap: () => context.go('/contacts/${contact.id}', extra: contact),
    );
  }
}
