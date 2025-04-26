import 'package:flutter/material.dart';

class CirclePage extends StatelessWidget {
  const CirclePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(centerTitle: false, title: Text("Circle Results")),
        body: const Text("Circle Page"),
      ),
    );
  }
}
