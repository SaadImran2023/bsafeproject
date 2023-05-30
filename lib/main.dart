import 'package:bsafe/googlemap.dart';
import 'package:bsafe/main_call.dart';
import 'package:bsafe/main_drawer.dart';
import 'package:bsafe/main_login.dart';
import 'package:flutter/material.dart';
import 'package:bsafe/registration.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocode/geocode.dart';
void main() {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    initialRoute: "login",
      routes: { 'login' :(context)=>Mylogin()

      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Text(
                'bSafe',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            SizedBox(width: 0,)
          ],

        ),
      ),
      drawer: MainDrawer(),
      body:  Container( decoration: const BoxDecoration(
        image: DecorationImage(
            image:AssetImage("assets/images/bsafe.jpg"),fit: BoxFit.cover )
      ,),
        height: 800,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Center(
              widthFactor: 20,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.blue[300], shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
                child: Text(
                  'Safe Travel',
                  style: TextStyle(
                    fontSize: 40,
                  ),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder:(context)=> Mygooglemap(), ),);
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.blue[300], minimumSize: Size(50, 80), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)) ),
                  child: Icon(
                    Icons.navigation,
                    size: 50,
                  ),
                  onPressed: () {
                  },
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.blue[300], minimumSize: Size(50, 80), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
                  child: Icon(
                    Icons.call,
                    size: 50,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MainCall(),
                      ),
                    );
                  },
                ),
              ],
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(20),
                ),
                child:Icon(Icons.warning_amber_rounded,size: 100,),

                onPressed: () {
                  print('Alert ');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
