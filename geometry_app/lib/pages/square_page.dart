import 'dart:math';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SquarePage extends StatelessWidget {
  final String input;

  const SquarePage({super.key, required this.input});

  @override
  Widget build(BuildContext context) {
    num side = double.parse(input);
    num area = pow(side, 2);
    num perimeter = 4 * side;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(centerTitle: false, title: Text("Square Results")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Side: $side'),
              Text('Area: $area'),
              Text('Perimeter: $perimeter'),
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
