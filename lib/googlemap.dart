import 'dart:async';

import 'package:bsafe/widgets/mapuserbadge.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

const LatLng SOURCE_LOCATION = LatLng(30.9510, 70.813063);
const LatLng DEST_LOCATION = LatLng(30.9510, 70.813063);
const double CAMERA_ZOOM = 16;
const double CAMERA_TILT = 80;
const double CAMERA_BEARING = 30;
const double PIN_VISIBLE_POSITION = 40;
const double PIN_INVISIBLE_POSITION = -220;

class Mygooglemap extends StatefulWidget {
  const Mygooglemap({Key? key}) : super(key: key);

  @override
  State<Mygooglemap> createState() => _MygooglemapState();
}

class _MygooglemapState extends State<Mygooglemap> {
  Completer<GoogleMapController> _controller = Completer();

  //BitmapDescriptor sourceIcon;
  //BitmapDescriptor destinationIcon;
  Set<Marker> _markers = Set<Marker>();
  late BitmapDescriptor sourceIcon;
  late BitmapDescriptor destinationIcon;

  bool userBadgeSelected = false;
  late LatLng currentLocation;
  late LatLng destinationLocation;
  @override
  void initState() {
    super.initState();
    this.setInitiallocation();
    //set up initial location
    //set up  the marker icons
    this.setSourceAndDestinationMarker();
  }

  void setSourceAndDestinationMarker() async {
    sourceIcon = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(devicePixelRatio: 2.0),
        "assests/imgages/source_pin.png");

    destinationIcon = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(devicePixelRatio: 2.0),
        "assests/imgages/destination_pin.png");
  }

  void setInitiallocation() {
    currentLocation =
        LatLng(SOURCE_LOCATION.longitude, SOURCE_LOCATION.latitude);
    destinationLocation =
        LatLng(SOURCE_LOCATION.latitude, SOURCE_LOCATION.longitude);
  }

  @override
  Widget build(BuildContext context) {
    CameraPosition initialCameraPosition = CameraPosition(
        zoom: CAMERA_ZOOM,
        tilt: CAMERA_TILT,
        bearing: CAMERA_BEARING,
        target: SOURCE_LOCATION);

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              padding: EdgeInsets.only(top: 35),
              child: GoogleMap(
                  padding:EdgeInsets.only(top: 600),
                  myLocationEnabled: true,
                  scrollGesturesEnabled: false ,
                  compassEnabled: true,
                  myLocationButtonEnabled: true,
                  tiltGesturesEnabled: true,
                  markers: _markers,
                  mapType: MapType.normal,
                  initialCameraPosition: initialCameraPosition,
                  onMapCreated: (GoogleMapController controler) {
                    _controller.complete(controler);
                  }
                  ),
            ),
          ),
          MapUserBadge(), //bar on google map
        /*  Positioned(left:0,right: 0,bottom: 0,

              child: Container(
            child: Column(
              children: [
                Container(
                  color: Colors.white,
                  child: Row( children: [
                    Stack(
                      children: [
                        ClipOval(
                          child: Image.asset(name),
                        )
                      ],
                    )
                  ],


                  ),
                )
              ],
            ),
          )),*/
        ],
      ),
    );
  }

  void showpinsOnMap() {
    setState(() {
      _markers.add(Marker(
          markerId: MarkerId('sourcepin'),
          position: currentLocation,
          icon: sourceIcon,));
      _markers.add(Marker(
          markerId: MarkerId('destination'),
          position: currentLocation,
          icon: destinationIcon,

      ));
    });
  }
}


