import 'main.dart';

import 'package:bsafe/registration.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class Mylogin extends StatelessWidget {
  final formkey = GlobalKey<FormState>();

  TextEditingController _email1 = TextEditingController();
  TextEditingController _password2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/login.png"), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 20, top: 150),
              child: Text(
                'Welcome\nBack',
                style: TextStyle(fontSize: 50, color: Colors.white),
              ),
            ),
            Form(
              autovalidateMode: AutovalidateMode.always,
              key: formkey,
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(top: 400, left: 30, right: 30),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _email1,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          hintText: 'Email',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        validator: MultiValidator([
                          RequiredValidator(errorText: "Required Email"),
                          EmailValidator(
                              errorText: "Please enter a valid Email")
                        ]),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: _password2,
                        obscureText: true,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.password),
                          hintText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        validator:
                            MinLengthValidator(6, errorText: "Should be min 6"),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Sign in',
                            style: TextStyle(
                                fontSize: 27,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff4c505b)),
                          ),
                          CircleAvatar(
                            backgroundColor: Color(0xff4c505b),
                            radius: 30,
                            child: IconButton(
                              color: Colors.white,
                              onPressed: () {
                                if (formkey.currentState!.validate()) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => MyHomePage(),
                                    ),
                                  );
                                } else {
                                  var _email = _email1.text;
                                  print("email:" + _email);
                                }
                              },
                              icon: Icon(Icons.arrow_forward),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Myregistration(),
                                ),
                              );
                            },
                            child: Text(
                              'Sign up',
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff4c505b)),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Myregistration(),
                                ),
                              );
                            },
                            child: Text(
                              'Forget password',
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff4c505b)),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
