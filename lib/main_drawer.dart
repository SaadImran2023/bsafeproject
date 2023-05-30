import 'package:bsafe/main_login.dart';
import 'package:bsafe/mian_addcontact.dart';
import 'package:bsafe/setting.dart';
import 'package:flutter/material.dart ';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(

        children: [
          Container(
            padding: EdgeInsets.all(50),
            width: double.infinity,
            color: Theme.of(context).primaryColor,
            child: Center(
              child: Column(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/images/saad.jpg' ),
                          fit: BoxFit.fill),
                    ),
                  ),
                  Text(
                    "Saad Imran",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                  Text(
                    "Saadimran@gmail.com",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  )
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text(
              "Add contact",
            ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=>MainAddContact(), ),);
            },
          ),
          ListTile(
            leading: Icon(Icons.star_rate),
            title: Text("Rate Us",style: TextStyle(fontSize: 15),),
            onTap: (){ 

            },
          ),
          ListTile(
            leading: Icon(Icons.edit),
            title: Text(" Edit Profile",style: TextStyle(fontSize: 15),),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Setting(),));
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings",style: TextStyle(fontSize: 15),),
            onTap: (){
             // Navigator.push(context, MaterialPageRoute(builder: (context)=>null!,));
            },
          ),
          ListTile(
            leading: Icon(Icons.arrow_back),
            title: Text("logout", style: TextStyle(fontSize: 15 ),),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=>Mylogin(), ),);
            },
          ),
        ],
      ),
    );
  }
}
