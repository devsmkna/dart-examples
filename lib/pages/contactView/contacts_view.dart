import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_example/_models/contact_model.dart';
import 'contact_view_item.dart';

class ContactsView extends StatelessWidget {
  const ContactsView({super.key});

  @override
  Widget build(BuildContext context) {
    final contactsState = context.watch<ContactCubit>().state;

    return Scaffold(
        appBar: AppBar(
          title: const Text("Contacts"),
        ),
        body: Column(children: [
          ElevatedButton(
            onPressed: () {
              context.read<ContactCubit>().addContact(Contact(
                    id: DateTime.now().millisecondsSinceEpoch.toString(),
                    name: 'Contact ${DateTime.now().millisecondsSinceEpoch}',
                    email: "nS5gB@example.com",
                    imageURL: "https://picsum.photos/200",
                    phoneNumber: "123456789",
                    address: "New Address",
                  ));
            },
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue[600])),
            child: const Text("Add Contact",
                style: TextStyle(color: Colors.white)),
          ),
          const SizedBox(height: 50),
          BlocProvider(
              create: (context) => ContactCubit(),
              child: Expanded(
                  child: ListView.separated(
                itemCount: contactsState.length,
                itemBuilder: (context, index) =>
                    ContactViewItem(contact: contactsState[index]),
                separatorBuilder: (context, index) => const Divider(),
              )))
        ]));
  }
}
