import 'package:bsafe/main_login.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';



final formkey = GlobalKey<FormState>();
class Myregistration extends StatelessWidget {
  const Myregistration({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    TextEditingController _email1 = TextEditingController();
    TextEditingController _password2 = TextEditingController();
    Mylogin();
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/register.png"), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 20, top: 140),
              child: Text(
                'Create\nAccount',
                style: TextStyle(fontSize: 50, color: Colors.white),
              ),
            ),
            Form(
              autovalidateMode: AutovalidateMode.always,
              key: formkey,
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(top: 300, left: 30, right: 30),
                  child: Column(
                    children: [
                      TextFormField(

                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person),
                              hintText: 'Name',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),),
                          validator: MultiValidator([
                          RequiredValidator(errorText: "Required Name"),

                      ]),),
                      SizedBox(height: 20),
                      TextFormField(controller: _email1,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email),
                              hintText: 'Email',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),),
                          validator: MultiValidator([
                          RequiredValidator(errorText: "Required Email"),
                          EmailValidator(
                              errorText: "Please enter a valid Email")

                      ],),),
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
                            'Sign up',
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
                                      builder: (context) => Mylogin(),
                                    ),
                                  );
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
                                  builder: (context) => Mylogin(),
                                ),
                              );
                            },
                            child: Text(
                              'Sign in',
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
