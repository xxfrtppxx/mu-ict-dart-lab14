import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(centerTitle: false, title: Text("Shape Calculator")),
        body:  SizedBox(
        width: 400,
        child: TextField())
      ),
    );
  }
}
