import 'package:flutter/material.dart';
import 'package:my_statefulwidget/screen/my_init_state.dart';
import 'package:my_statefulwidget/screen/my_stepper.dart';
import 'package:my_statefulwidget/screen/my_textfield.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "initState");
                  },
                  child: const Text(
                    "initState and Dispose",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "stepper");
                  },
                  child: const Text(
                    "Steppers example",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "textField");
                  },
                  child: const Text(
                    "TextField example",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
