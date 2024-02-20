import 'package:flutter/material.dart';

class CalculatorView extends StatelessWidget {

   const CalculatorView({super.key});

  // Constructor to initialize myController
  // CalculatorView(this.myController);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: _appBar(),
        body: Column(
          children: [
            _textInput(),
          ],
        ),
      ),
    );
  }

  Padding _textInput() {
    return Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            TextField(
              autofocus: true,
              decoration: InputDecoration(
                  labelText: "Enter your Name",
                  hintText: "Syed Arbaz",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
              ),
            ),
          ],
        ),
      );
  }

  // Declare a controller


  AppBar _appBar() {
    return AppBar(
      backgroundColor: Colors.blue,
      title: const Text(
        "Calculator",
        style: TextStyle(
            color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
    );
  }
}
