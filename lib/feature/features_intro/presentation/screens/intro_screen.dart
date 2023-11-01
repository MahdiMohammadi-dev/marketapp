import 'package:flutter/material.dart';

class IntorScreen extends StatelessWidget {
  const IntorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments;

    return const Scaffold(
      backgroundColor: Colors.cyan,
    );
  }
}
