import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    // final text = Navigator.of(context).settings.arguments as MyArguments;

    final date = DateTime(2024, 02, 01);
    final format = DateFormat('dd MMM, yyyy');

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Date example"),
            ),
            body: SingleChildScrollView(
                child: Column(
              children: [
                Center(
                  child: Text(format.format(date)),
                ),
                const ElevatedButton(onPressed: null, child: Text('ciao')),
                ElevatedButton(
                    onPressed: () {
                      if (Navigator.canPop(context)) {
                        Navigator.of(context).pop();
                      }
                    },
                    child: const Text('indietro'))
              ],
            ))));
  }
}

class MyArguments {
  String text;

  MyArguments({
    required this.text
  });
}