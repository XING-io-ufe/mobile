import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  final input1 = TextEditingController();
  final input2 = TextEditingController();

  String hariu = '';

  void addNumbers() {
    setState(() {
      int num1 = int.parse(input1.text);
      int num2 = int.parse(input2.text);
      int sum = num1 + num2;
      hariu = '=$sum';
    });
  }

  void subtractNumbers() {
    setState(() {
      int num1 = int.parse(input1.text);
      int num2 = int.parse(input2.text);
      int diff = num1 - num2;
      hariu = '=$diff';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("First number: "),
          TextField(controller: input1),
          Text("Second number: "),
          TextField(controller: input2),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: addNumbers, child: Text('+')),
              ElevatedButton(onPressed: subtractNumbers, child: Text('-')),
            ],
          ),
          Center(child: Text(hariu)),
        ],
      ),
    );
  }
}
