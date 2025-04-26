import 'package:flutter/material.dart';

class SquarePage extends StatelessWidget {
  const SquarePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(centerTitle: false, title: Text("Square Results")),
        body: const Text("Circle Page"),
      ),
    );
  }
}
