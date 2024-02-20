
import 'package:flutter/material.dart';
// import 'pages/home_page.dart';
// import 'pages/calculator_view.dart';
import 'pages/input_field.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:const Text("AppBar"),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        body:const Column(
          children: [
            InputField()
          ],
        ),
      ),
    );
  }
}
