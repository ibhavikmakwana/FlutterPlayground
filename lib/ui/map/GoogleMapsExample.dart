//// Copyright 2020 The Chromium Authors. All rights reserved.
//// Use of this source code is governed by a BSD-style license that can be
//// found in the LICENSE file.
//
//import 'package:flutter/material.dart';
//import 'package:google_maps_flutter/google_maps_flutter.dart';
//
//class GoogleMapsExample extends StatefulWidget {
//  final String title;
//
//  GoogleMapsExample(this.title);
//
//  @override
//  State createState() => GoogleMapsExampleState();
//}
//
//class GoogleMapsExampleState extends State<GoogleMapsExample> {
//  GoogleMapController mapController;
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text(widget.title),
//      ),
//      body: Stack(
//        children: [
//          Container(
//            width: double.infinity,
//            height: double.infinity,
//            child: GoogleMap(
//              initialCameraPosition: const CameraPosition(
//                bearing: 270.0,
//                target: LatLng(23.0225, 72.5714),
//                tilt: 30.0,
//                zoom: 17.0,
//              ),
//              onMapCreated: _onMapCreated,
//            ),
//          ),
//          Padding(
//            padding: const EdgeInsets.all(8.0),
//            child: Align(
//              alignment: Alignment.bottomRight,
//              child: FloatingActionButton(
//                onPressed: mapController == null
//                    ? null
//                    : () {
//                  mapController
//                      .animateCamera(CameraUpdate.CameraPosition(
//                    const CameraPosition(
//                      bearing: 270.0,
//                      target: LatLng(23.0225, 72.5714),
//                      tilt: 30.0,
//                      zoom: 17.0,
//                    ),
//                  ));
//                },
//                mini: true,
//                child: Icon(Icons.my_location),
//              ),
//            ),
//          ),
//        ],
//      ),
//    );
//  }
//
//  void _onMapCreated(GoogleMapController controller) {
//    setState(() {
//      mapController = controller;
//    });
//  }
//}
