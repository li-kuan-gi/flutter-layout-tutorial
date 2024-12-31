import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Flutter layout tutorial';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(appTitle),
          ),
        ),
        body: const Center(
          child: Text('Hello, world!!!'),
        ),
      ),
    );
  }
}
