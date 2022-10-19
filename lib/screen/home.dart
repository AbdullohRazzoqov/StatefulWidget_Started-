import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
          ),
          Form(
            key: _formKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    //?controller => yozgan qiymatlarni saqlaydi
                    controller: _nameController,
                    //?keyboardType => klavturani qanday bo'lishi controll qilamiz
                    keyboardType: TextInputType.number,
                    //? parol yozish uchun
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: "Name",
                      hintText: "User",
                      suffixIcon: Icon(
                        Icons.person,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
