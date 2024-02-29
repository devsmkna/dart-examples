import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_example/pages/contactDetail/contact_detail.dart';
import 'package:flutter_example/pages/restaurant/restaurant_example.dart';
import 'package:flutter_example/pages/welcome/welcome_page.dart';
import 'package:go_router/go_router.dart';
import '_models/contact_model.dart';
import 'pages/contactView/contacts_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ContactCubit(),
      child: MaterialApp.router(
      routerConfig: GoRouter(initialLocation: '/', routes: [
        GoRoute(
            path: '/',
            builder: (context, state) => const WelcomePage(),
            routes: [
              GoRoute(
                path: 'restaurant',
                builder: (context, state) => const RestaurantExample(),
              ),
              GoRoute(
                  path: 'contacts',
                  builder: (context, state) => const ContactsView(),
                  routes: [
                    GoRoute(
                        path: ':id',
                        builder: (context, state) => ContactDetail(
                              id: state.pathParameters['id']!,
                            )),
                  ]),
            ]),
      ]),
    ));
  }
}
