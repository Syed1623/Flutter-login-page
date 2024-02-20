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
    double screenHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "login Form",
            style: TextStyle(
              fontWeight: FontWeight.w900
            ),
            ),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        body: const Column(
          children: [InputField()],
        ),
        bottomNavigationBar: Container(
          height: screenHeight * 0.05,
          alignment: Alignment.center,
          color: Colors.amber,
          child: ElevatedButton(
            onPressed: () {
              //logic to move t0 another page
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //       builder: (context) => RegistrationPage()), // Replace with your actual registration page widget
              // );
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.amber),
              elevation: MaterialStateProperty.all(0),
            ),
            child: const Text("New User? Click Here"),
          ),
        ),
      ),
    );
  }
}
