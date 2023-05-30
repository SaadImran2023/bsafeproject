import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart%20';

class MapUserBadge extends StatelessWidget {
  const MapUserBadge({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 100,
        left: 0,
        right: 0,
        child: Container( padding : EdgeInsets.only(top: 5,bottom: 5, left: 10, right: 10 ),
          margin: EdgeInsets.only(top: 10, bottom:10, left: 20, right: 20),

          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(100),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.9),
                    blurRadius: 10,
                    offset: Offset.zero)
              ]),
          child: Row(
            children: [
              /*Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(
                      image: AssetImage('assets/images/saad.jpg'), fit:BoxFit.cover),
                  border: Border.all(color: Colors.blue, width: 1),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 10,
                      offset: Offset.zero,
                    )
                  ],
                ),
              ),*/
              SizedBox(
                width: 0,
              ),
              Expanded(
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   /* Text(
                      'Saad Imran',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                    Text(
                      'Islamabad',
                      style: TextStyle(fontSize: 15 , color: Colors.blue),
                    )
                  */
                  TextField( decoration: InputDecoration(
                    suffixIcon: Icon(Icons.location_on),
                    hintText: 'Location',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),),)
                  ],
                ),
              ),

            ],
          ),
        ));
  }
}