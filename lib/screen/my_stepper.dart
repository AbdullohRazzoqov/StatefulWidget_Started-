import 'package:flutter/material.dart';

class MyStepper extends StatefulWidget {
 const  MyStepper({super.key});

  @override
  State<MyStepper> createState() => _MyStepperState();
}

class _MyStepperState extends State<MyStepper> {
  int _currenStep = 0;
  final _formKey = GlobalKey<FormState>();

  final List<Step> _steps = [
    Step(
        subtitle: const Text("Ism yoki Familya yozing"),
        state: StepState.editing,
        title: const Text("Ismingizni kiriting"),
        content: TextFormField(validator: (v) => v!.isEmpty ? "Ism kiritish shart":null,
          decoration: InputDecoration(
            hintText: "Ismingiz",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(13),
            ),
          ),
        )),
    Step(
      subtitle: const Text("Ism yoki Familya yozing"),
      state: StepState.editing,
      title: const Text("Ismingizni kiriting"),
      content: TextFormField(
        decoration: InputDecoration(
          hintText: "Ismingiz",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13),
          ),
        ),
      ),
    ),
    Step(
        subtitle: const Text("Siz bilan bo'glanish uchun"),
        state: StepState.editing,
        title: const Text("Emailingizni kiriting"),
        content: TextFormField(
          decoration: InputDecoration(
            hintText: "Email...",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(13),
            ),
          ),
        ))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: Stepper(
                onStepCancel: () {
                  setState(() {
                    if (_currenStep != 0) {
                      _currenStep -= 1;
                    }
                  });
                },
                steps: _steps,
                currentStep: _currenStep,
                onStepContinue: () {
                if (_formKey.currentState!.validate()){
                    setState(
                    () {
                      if (_currenStep != 2) {
                        _currenStep += 1;
                      } else if (_currenStep == 2) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (contexg) {
                              return const Scaffold(
                                body: Center(
                                    child: Text("Bosh sahifaga hush kelibsiz")),
                              );
                            },
                          ),
                        );
                      }
                    },
                  );
                }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
