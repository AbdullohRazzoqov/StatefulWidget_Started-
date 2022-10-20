import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();

  bool _isCecked = false;
  var _checkValue;
  bool _switchValue = false;
  double _sliderValue = 0.0;
  String _dropValue = "Uzbekiston";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          Expanded(
            flex: 1,
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
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
                    ), //? validator ichiga yozilgan text keladi
                    validator: (v) {
                      if (v!.isEmpty) {
                        return "Bo'sh kiritish mumkin emas";
                      }
                      return null;
                    },
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 9,
            child: Container(
              color: Colors.cyanAccent,
              child: Column(
                children: [
                  CheckboxListTile(
                    title: const Text("Checkbox"),
                    secondary: const Icon(Icons.check),
                    value: _isCecked,
                    onChanged: (v) {
                      setState(() {
                        _isCecked = !_isCecked;
                      });
                    },
                  ),
                  //? RadioListTile => ikkita uchta undan yuqori bo'lgan variantlar ichidan bittasini tashllash kerak bo'lsa
                  RadioListTile(
                      title: const Text("Erkak"),
                      value: "Erkak",
                      groupValue: _checkValue,
                      onChanged: (v) {
                        setState(() {
                          _checkValue = v;
                        });
                      }),
                  RadioListTile(
                      title: const Text("Ayol"),
                      value: "Ayol",
                      groupValue: _checkValue,
                      onChanged: (v) {
                        setState(() {
                          _checkValue = v;
                        });
                      }),
                  Switch(
                      value: _switchValue,
                      onChanged: (v) {
                        setState(() {
                          _switchValue = !_switchValue;
                        });
                      }),
                  // CupertinoSwitch(
                  //     value: _switchValue,
                  //     onChanged: (v) {
                  //       setState(() {
                  //         _switchValue = !_switchValue;
                  //       });
                  //     }),
                  Slider(
                      divisions: 10,
                      value: _sliderValue,
                      onChanged: (v) {
                        setState(() {});
                        _sliderValue = v;
                      }),
                  // CupertinoSlider(
                  //   value: _sliderValue,
                  //   onChanged: (v) {
                  //     setState(() {});
                  //     _sliderValue = v;
                  //   },
                  // ),
                  DropdownButtonHideUnderline(
                    child: DropdownButton(value: _dropValue,
                        items:  const [
                          DropdownMenuItem(
                            value: "Uzbekiston",
                            child: Text(
                              "Uzbekiston",style: TextStyle(color: Colors.black),
                            ),
                          ),
                          DropdownMenuItem(
                            value: "USA",
                            child: Text("USA"),
                          ),
                          DropdownMenuItem(
                            value: "Turkey",
                            child: Text("Turkey"),
                          ),
                        ],
                        onChanged: (v) {
                          setState(() {
                            _dropValue = v.toString();
                          });
                        }),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //! agar validate bo'lgan bo'lsa ifni ishlat
          if (_formKey.currentState!.validate()) {
            debugPrint("Value: ${_nameController.text}");
            _nameController.clear();
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
