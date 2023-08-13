// ignore_for_file: depend_on_referenced_packages

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen2 extends StatefulWidget {
  const MapScreen2({super.key, required this.title});

  final String title;

  @override
  State<MapScreen2> createState() => _MapScreen2State();
}

class _MapScreen2State extends State<MapScreen2> {
  Completer<GoogleMapController> _controller = Completer();

  //initial position (latitude & logitude)
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(28.644800, 77.216721),
    zoom: 14.4746,
  );

  //Current location permission
  Future<Position> getUserCurrentLocation() async {
    await Geolocator.requestPermission().then((value) {}).onError(
      (error, stackTrace) {
        print("error" + error.toString());
      },
    );

    return await Geolocator.getCurrentPosition();
  }

  final List<Marker> _markers = [
    Marker(
      markerId: const MarkerId('2'),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
      position: const LatLng(22.96855, 88.42959),
      infoWindow: const InfoWindow(title: 'Paws & tails pet clinic'),
    ),
    Marker(
      markerId: const MarkerId('3'),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
      position: const LatLng(22.98443, 88.43602),
      infoWindow: const InfoWindow(title: 'Petscan'),
    ),
    Marker(
      markerId: const MarkerId('4'),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
      position: const LatLng(22.98443, 88.43602),
      infoWindow: const InfoWindow(title: 'Uttasoumita Vet Clinic'),
    ),
    Marker(
      markerId: const MarkerId('5'),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
      position: const LatLng(22.89346, 88.37444),
      infoWindow: const InfoWindow(title: 'Antarik Vet Clinic'),
    ),
    Marker(
      markerId: const MarkerId('6'),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
      position: const LatLng(22.89346, 88.37444),
      infoWindow: const InfoWindow(title: 'Pritam Kumar sinha Vet Clinic'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: w / 10,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white.withOpacity(0.7),
                    shape: const CircleBorder(),
                  ),
                  child: const Icon(
                    Icons.arrow_back,
                    size: 50,
                    color: Colors.white,
                  )),
            ),
            GoogleMap(
              markers: Set<Marker>.of(_markers),
              initialCameraPosition: _kGooglePlex,
              myLocationButtonEnabled: true,
              mapType: MapType.normal,
              compassEnabled: true,
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
            ),
            Positioned(
                top: 690,
                left: 260,
                child: ElevatedButton(
                  //style: ButtonStyle(backgroundColor: Colors.blue),
                  onPressed: () async {
                    getUserCurrentLocation().then((value) async {
                      _markers.add(Marker(
                        markerId: const MarkerId('1'),
                        position: LatLng(value.latitude, value.longitude),
                        infoWindow: const InfoWindow(title: 'Your Location'),
                      ));
                      CameraPosition currentPosi = CameraPosition(
                        target: LatLng(value.latitude, value.longitude),
                        zoom: 17,
                      );
                      final GoogleMapController controller =
                          await _controller.future;

                      controller.animateCamera(
                          CameraUpdate.newCameraPosition(currentPosi));

                      setState(() {});
                    });
                  },
                  autofocus: true,
                  child: Icon(
                    Icons.my_location,
                    color: Colors.blue.shade800,
                  ),
                  //label: Text('Current location')),
                )),
            Positioned(
              top: w / 10,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white.withOpacity(0.7),
                    shape: const CircleBorder(),
                  ),
                  child: const Icon(
                    Icons.arrow_back,
                    size: 50,
                    color: Colors.white,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
