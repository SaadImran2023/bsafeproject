import 'dart:math';

import 'package:flutter/material.dart';
import 'dart:io';

class MainAddContact extends StatefulWidget {
  const MainAddContact({Key? key}) : super(key: key);

  @override
  State<MainAddContact> createState() => _DropDownHelperState();
}

Future<void> shownumber() async {
  var shownumber = _DropDownHelperState();
  Scaffold(
      body: Container(
    padding: EdgeInsets.all(10),
    child: TextField(
      maxLength: 11,
      enabled: false,
      decoration: InputDecoration(
        hintStyle: (TextStyle(color: Colors.black)),
        hintText: "_phonenumber2",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    ),
  ));
}

class _DropDownHelperState extends State<MainAddContact> {
  List dropDownListData = [
    {"title": "Hello, I am in emergency. Please contact me.", "value": "1"},
    {"title": "I am in need of urgent help. Get back to me as soon as possible.", "value": "2"},
    {"title": "Hi, I need your help.", "value": "3"},

  ];

  TextEditingController _phonenumber1 = TextEditingController();
  String phone = "";

  String secondDropDown = "";
  @override
  Widget build(BuildContext context) {
    var calling = shownumber();
    var text = null;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Add contact"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10),
        child: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            TextField(
                  maxLength: 11,
                  controller: _phonenumber1,
                  enabled: text,

                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintStyle: (TextStyle(color: Colors.black)),
                    hintText: 'Add Contact',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),

           ),
            const SizedBox(
              height: 20,
            ),
            InputDecorator(
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                contentPadding: const EdgeInsets.all(20),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                    isDense: true,
                    value: secondDropDown,
                    isExpanded: true,
                    menuMaxHeight: 350,
                    items: [
                      const DropdownMenuItem(
                          child: Text(
                            "Select Message",
                          ),
                          value: ""),
                      ...dropDownListData.map<DropdownMenuItem<String>>((data) {
                        return DropdownMenuItem(
                            child: Text(data['title']), value: data['value']);
                      }).toList(),
                    ],
                    onChanged: (value) {
                      print("selected Value $value");
                      setState(() {
                        secondDropDown = value!;
                      });
                    }),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  var phone = _phonenumber1.text;
                  if (secondDropDown == "" || phone == "") {
                    print("Please select a message or number");
                  } else {
                    print("user selected message " + phone);
                    print("user selected message " + secondDropDown);
                  }
                },
                child: const Text("Submit")),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
