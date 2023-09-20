import 'package:flutter/material.dart';
import 'package:numeric_keypad/numeric_keypad.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NumericKeypad(
        mobile: (number) {
          print(number);
        },
        isOkButton: false,
        okButton: (mobile) {
          print(mobile);
        },
        undelineColor: const Color.fromARGB(255, 120, 105, 105),
        underlineWidth: 150,
        underlineThilness: 1.5,
        spaceBitweenFieldAndNumbrs: 40,
        fontstyle: const TextStyle(
            fontSize: 16, color: Color.fromARGB(255, 39, 39, 143)),
        keyTextStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w800,
          color: Colors.deepOrange,
        ),
        buttonDecoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.lime, width: 2),
        ),
        backspaceColor: const Color.fromARGB(255, 141, 60, 60),
        okStyle: const TextStyle(
            fontSize: 18,
            color: Color.fromARGB(255, 79, 7, 7),
            fontWeight: FontWeight.bold),
        hintStyle: const TextStyle(
          color: Color.fromARGB(255, 156, 14, 208),
          fontSize: 18,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
