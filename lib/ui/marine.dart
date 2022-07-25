import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class Marine extends StatefulWidget {
  Marine({Key? key}) : super(key: key);

  //List<Marker> isaretler = <Marker>[];

  @override
  State<Marine> createState() => _MarineState();
}

class _MarineState extends State<Marine> {

  Completer<GoogleMapController> haritaKontrol = Completer();
  var baslangicKonum = CameraPosition(target: LatLng(-8.8533562,13.2140636),zoom: 10,);

 
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Marine'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              width: 400,
              height: 700,
              child: GoogleMap(
                mapType: MapType.hybrid,
                initialCameraPosition: baslangicKonum,
                onMapCreated: (GoogleMapController controller){
                  haritaKontrol.complete(controller);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
  