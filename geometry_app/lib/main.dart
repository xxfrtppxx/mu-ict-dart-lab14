import 'package:flutter/material.dart';
import 'package:geometry_app/pages/circle_page.dart';
import 'package:geometry_app/pages/home_page.dart';
import 'package:geometry_app/pages/square_page.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  final GoRouter _router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => HomePage()),
      GoRoute(
        path: '/circleCal/:input',
        builder:
            (context, state) =>
                CirclePage(input: state.pathParameters['input']!),
      ),
      GoRoute(
        path: '/squareCal/:input',
        builder:
            (context, state) =>
                SquarePage(input: state.pathParameters['input']!),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: _router);
  }
}
