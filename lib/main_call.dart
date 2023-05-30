import 'package:flutter/material.dart';

import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';


class MainCall extends StatelessWidget {
  const MainCall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Emergency Contacts"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.only(
                top: 10,
              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  new SizedBox(
                    width: 170.0,
                    height: 50.0,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.transparent)),
                      child: Text(
                        "Police",
                        style: TextStyle(fontSize: 25, color: Colors.black),
                      ),
                      onPressed: () {
                        FlutterPhoneDirectCaller.callNumber('+9215');
                      },
                    ),
                  ),
                  new SizedBox(
                    width: 170.0,
                    height: 50.0,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.transparent)),
                      child: Text(
                        "Rescue ",
                        style: TextStyle(fontSize: 25, color: Colors.black),
                      ),
                      onPressed: () {
                        FlutterPhoneDirectCaller.callNumber('+921122');
                      },
                    ),
                  ),
                ],
              ),
              Padding(
                  padding: EdgeInsets.only(
                top: 10,
              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  new SizedBox(
                    width: 170.0,
                    height: 50.0,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.transparent)),
                      child: Text(
                        "Fire Brigade",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      onPressed: () {
                        FlutterPhoneDirectCaller.callNumber('+9216');
                      },
                    ),
                  ),
                  new SizedBox(
                    width: 170.0,
                    height: 50.0,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.transparent)),
                      child: Text(
                        "Cyber Crime",
                        style: TextStyle(fontSize: 25, color: Colors.black),
                      ),
                      onPressed: () {
                        FlutterPhoneDirectCaller.callNumber('+921930');
                      },
                    ),
                  ),
                ],
              ),
              Padding(
                  padding: EdgeInsets.only(
                top: 10,
              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  new SizedBox(
                    width: 170.0,
                    height: 50.0,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.transparent)),
                      child: Text(
                        "Motorway Police",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                      onPressed: () {
                        FlutterPhoneDirectCaller.callNumber('+92130');
                      },
                    ),
                  ),
                  new SizedBox(
                    width: 170.0,
                    height: 50.0,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.transparent)),
                      child: Text(
                        "Women helpline",
                        style: TextStyle(fontSize: 19, color: Colors.black),
                      ),
                      onPressed: () {
                        FlutterPhoneDirectCaller.callNumber('+92181');
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
