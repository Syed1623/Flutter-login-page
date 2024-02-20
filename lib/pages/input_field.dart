import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  const InputField({super.key});

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  final TextEditingController _controllerOne = TextEditingController();
  final TextEditingController _controllerTwo = TextEditingController();

  @override
  void dispose() {
    // Dispose the controllers to avoid memory leaks
    _controllerOne.dispose();
    _controllerTwo.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          TextField(
            controller: _controllerOne,
            autocorrect: true,
            autofocus: true,
            decoration: InputDecoration(
                border:OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                labelText: 'Enter Your Name...',
                hintText: "Syed Arbaz"),
          ),
          const SizedBox(height: 20), // Adds space between the two TextFields
          TextField(
            controller: _controllerTwo,
            autocorrect: true,
            autofocus: true,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                labelText: 'Enter Your Email...',
                hintText: "syedarbaz@gmail.com"),
          ),
          const SizedBox(height: 20), // Adds space before the button
          ElevatedButton(
            onPressed: () {
              // Print the current value of both text fields to the console
              print("First input: ${_controllerOne.text}");
              print("Second input: ${_controllerTwo.text}");
            },
            style:ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.black)
            ),
            child:const Padding(
              padding:  EdgeInsets.all(12.0),
              child:  Text(
                'Submit',
                style: TextStyle(
                    color: Colors.amber,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
