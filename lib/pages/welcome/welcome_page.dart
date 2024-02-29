import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Projects Homepage"),
      ),
      body: Center(
        child: ListView(
          children: [
            const Text("Welcome to my projects homepage!"),
            ElevatedButton(onPressed: () => context.go('/contacts'), child: const Text('Contacts')),
            const Divider(),
            ElevatedButton(onPressed: () => context.go('/restaurant'), child: const Text('Restaurant')),
          ]
        ),
      ),
    );
  }
}