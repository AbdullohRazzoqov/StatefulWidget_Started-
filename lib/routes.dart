import 'package:flutter/material.dart';
import 'package:my_statefulwidget/screen/home.dart';
import 'package:my_statefulwidget/screen/my_init_state.dart';
import 'package:my_statefulwidget/screen/my_stepper.dart';
import 'package:my_statefulwidget/screen/my_textfield.dart';

class RouterGenerator {
  static generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
          builder: (context) => const MyHomePage(),
        );
      case "stepper":
        return MaterialPageRoute(
          builder: (_) => const MyStepper(),
        );
      case "initState":
        return MaterialPageRoute(
          builder: (_) => const MyInitStateExample(),
        );
      case "textField":
        return MaterialPageRoute(
          builder: (_) => const MyTextField(),
        );
    }
  }
}
