import 'package:flutter/material.dart';
import 'package:flutter_example/contact_detail.dart';
import 'package:go_router/go_router.dart';
import 'contacts_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: GoRouter(initialLocation: '/', routes: [
        GoRoute(
            path: '/',
            builder: (context, state) => const ContactsView(),
            routes: [
              GoRoute(
                  path: 'contacts/:id',
                  builder: (context, state) => ContactDetail(
                        id: state.pathParameters['id']!,
                      ))
            ]),
      ]),
    );
  }
}
