import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _inputController = TextEditingController();
  bool? isCircleChecked = false;
  bool? isSquareChecked = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(centerTitle: false, title: Text("Shape Calculator")),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextField(
                  controller: _inputController,
                  decoration: const InputDecoration(
                    labelText: 'Enter a number',
                  ),
                ),
                SizedBox(height: 20),
                checkBox(
                  isCircleChecked,
                  'Circle',
                  (newValue) => setState(() {
                    isCircleChecked = newValue;
                  }),
                ),
                checkBox(
                  isSquareChecked,
                  'Square',
                  (newValue) => setState(() {
                    isSquareChecked = newValue;
                  }),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        final numberInput = _inputController.text.trim();
                        if (numberInput.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Please enter a number.'),
                            ),
                          );
                        } else if (double.parse(numberInput) < 0.0) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Please enter a positive number.'),
                            ),
                          );
                        } else {
                          if (isCircleChecked == true) {
                            context.go('/circleCal/$numberInput');
                          } else if (isSquareChecked == true) {
                            context.go('/squareCal/$numberInput');
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                  'Please select at least one checkbox.',
                                ),
                              ),
                            );
                          }
                        }
                      },
                      child: const Text('Calculate'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget checkBox(
    bool? isChecked,
    String displayText,
    ValueChanged<bool?> onChange,
  ) {
    return Row(
      children: [
        Checkbox(value: isChecked, onChanged: onChange, shape: CircleBorder()),
        Text(displayText),
      ],
    );
  }
}
