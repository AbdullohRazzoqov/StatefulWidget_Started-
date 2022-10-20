import 'package:flutter/material.dart';
import 'package:my_statefulwidget/screen/home.dart';
//? 4 ta build medhod bor 1. initState, 2. dispose, 3. build, 4. setState
//! build => sahifa har safar ishga tushganda ishlaydi 
//! initState => bizda sahifa ishlaganda bir marta ishga tushushi kerak bo'lgan nimdir bo'lsa ichida yozsak bo'ladi
//! dispose => sahifadan chiqib ketyotganda bir ishlaydi
//! setState => biror amal bajarilgandan so'ng sahifani qayta chizadi
class MyInitStateExample extends StatefulWidget {
  const MyInitStateExample({super.key});

  @override
  State<MyInitStateExample> createState() => _MyInitStateExampleState();
}

class _MyInitStateExampleState extends State<MyInitStateExample> {
  @override
  void initState() {
    super.initState();
    a();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) =>  MyHomePage()),
              (route) => false);
        },
        child: const Icon(Icons.navigation_rounded),
      ),
    );
  }

  void a() {
    debugPrint("Ishladi");
  }

  @override
  void dispose() {
    super.dispose();
    debugPrint("Dispose ishladi");
  }
}
