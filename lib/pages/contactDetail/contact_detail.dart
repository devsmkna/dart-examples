import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_example/_widgets/contact_image.dart';
import '../../_models/contact_model.dart';

class ContactDetail extends StatelessWidget {
  final String id;

  const ContactDetail({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    final Contact user = context
        .read<ContactCubit>()
        .state
        .firstWhere((contact) => contact.id == id);

    return Scaffold(
      appBar: AppBar(
        title: Text(user.name, style: TextStyle(color: Colors.blue[600])),
      ),
      body: ListView(children: [
        const SizedBox(height: 10),
        ContactImage(imageUrl: user.imageURL, size: 100),
        const SizedBox(height: 10),
        const Text('Phone', style: TextStyle(fontWeight: FontWeight.bold)),
        Text(user.phoneNumber),
        const Divider(),
        const Text('Email', style: TextStyle(fontWeight: FontWeight.bold)),
        Text(user.email),
        const Divider(),
        const Text('Address', style: TextStyle(fontWeight: FontWeight.bold)),
        Text(user.address),
        const SizedBox(height: 50),
        Column(children: [
          ElevatedButton(
              onPressed: () {
                context.read<ContactCubit>().removeContact(user.id);
                Navigator.pop(context);
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red[600])),
              child: const Text('Delete Contact',
                  style: TextStyle(color: Colors.white))),
        ])
      ]),
    );
  }
}
