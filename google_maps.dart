import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  GoogleMapController mapController;

  final LatLng _center = const LatLng(9.9682, 76.3182);

  void _onMapCreated(GoogleMapController controller){
    mapController = controller;
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Google Maps'),
          backgroundColor: Colors.greenAccent,
        ),
        body: GoogleMap(onMapCreated: _onMapCreated,initialCameraPosition: CameraPosition(target: _center, zoom: 11.0)),
      ),
    );
  }
}
