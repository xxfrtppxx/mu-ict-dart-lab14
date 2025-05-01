import 'dart:math';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CirclePage extends StatelessWidget {
  final String input;

  const CirclePage({super.key, required this.input});

  @override
  Widget build(BuildContext context) {
    num radius = double.parse(input);
    num area = pi * pow(radius, 2);
    num circumference = 2 * pi * radius;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(centerTitle: false, title: Text("Circle Results")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Radius: $radius'),
              Text('Area: $area'),
              Text('Circumference: $circumference'),
              ElevatedButton(
                onPressed: () {
                  context.go('/');
                },
                child: const Text('Back to Home'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
