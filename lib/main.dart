import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Parcial Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FibonacciScreen(),
    );
  }
}

class FibonacciScreen extends StatefulWidget {
  @override
  _FibonacciScreenState createState() => _FibonacciScreenState();
}

class _FibonacciScreenState extends State<FibonacciScreen> {
  int n = 10;

  int fibonacci(int n) {
    if (n == 0) {
      return 0;
    } else if (n == 1) {
      return 1;
    } else {
      return fibonacci(n - 1) + fibonacci(n - 2);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fibonacci App'),
      ),
      body: ListView.builder(
        itemCount: n,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('Fibonacci(${index + 1}): ${fibonacci(index)}'),
          );
        },
      ),
    );
  }
}
