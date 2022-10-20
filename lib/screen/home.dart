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
          Card(
            child: TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>const  MyInitStateExample()));
              },
              child: const Text(
                "initState and Dispose",
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),
           Card(
            child: TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>const   MyStepper()));
              },
              child: const Text(
                "Steppers example",
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),
            Card(
            child: TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const  MyTextField()));
              },
              child: const Text(
                "TextField example",
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
