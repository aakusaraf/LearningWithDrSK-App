import 'package:flutter/material.dart';


/// main application widget
class MyHomeApp extends StatelessWidget {
  const MyHomeApp({Key? key}) : super(key: key);

  static const String _title = 'Learning with Dr.SK Srivastava';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatelessWidget(),
    );
  }
}

/// stateless widget that the main application instantiates
class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learning with Dr.SK Srivastava'),
      ),
      body: const Center(
        child: Text(
          'This is the home page.',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}