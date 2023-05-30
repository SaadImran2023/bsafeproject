import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit profile"),
      ),
   body:
   Container(
     child: Column(
       children: [
         Container(
           padding: EdgeInsets.all(40),
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
                         fit: BoxFit.fill
                     ),
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
         Container(padding: EdgeInsets.only(top: 10,left:20,right: 20 ),
           child: Column(
             children: [
               TextFormField(

                 decoration: InputDecoration(
                   prefixIcon: Icon(Icons.person),
                   hintText: 'Name',
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(20),
                   ),
                 ),

               ),
             ],
           ),
         ),
         Container(padding: EdgeInsets.only(top: 10,left:20,right: 20),
           child: Column(
             children: [
               TextFormField(

                 decoration: InputDecoration(
                   prefixIcon: Icon(Icons.email),
                   hintText: 'Email',
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(20),
                   ),
                 ),

               ),
             ],
           ),
         ),
         Container(padding: EdgeInsets.only(top: 10,left:20,right: 20),
           child: Column(
             children: [
               TextFormField(enabled:false ,
                 decoration: InputDecoration(
                   prefixIcon: Icon(Icons.phone),
                   suffixIcon: Icon(Icons.navigate_next),
                   hintText: 'Your Contact',
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(20),
                   ),
                 ),

               ),
             ],
           ),
         ),
         Container(padding: EdgeInsets.only(top: 10,left:20,right: 20),
           child: Column(
             children: [
               TextFormField(enabled:false ,
                 decoration: InputDecoration(
                   prefixIcon: Icon(Icons.home),
                   suffixIcon: Icon(Icons.navigate_next),
                   hintText: 'Add Your Home Adress',
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(20),
                   ),
                 ),

               ),
             ],
           ),
         ),
         Container(padding: EdgeInsets.only(top: 10,left:20,right: 20),
           child: Column(
             children: [
               TextFormField(enabled:false ,
                 decoration: InputDecoration(
                   prefixIcon: Icon(Icons.password),
                   suffixIcon: Icon(Icons.navigate_next),
                   hintText: 'Chane Password',
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(20),
                   ),
                 ),

               ),
             ],
           ),
         ),
         Container(height: 20,),
         new SizedBox(
           width: 320.0,
           height: 60.0,

           child: ElevatedButton(

             style: ButtonStyle(
                 backgroundColor:
                 MaterialStateProperty.all(Color(0xECEFF1),)
             ),
             child: Text(
               "Save Change",
               style: TextStyle(fontSize: 20, color: Colors.white70),
             ),
             onPressed: () {

             },
           ),
         ),
       ],
     ),
   ),
    );
  }
}
