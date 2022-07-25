import 'dart:async';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class Marine extends StatefulWidget {
  Marine({Key? key}) : super(key: key);

  @override
  State<Marine> createState() => _MarineState();
}

class _MarineState extends State<Marine> {

  Completer<GoogleMapController> haritaKontrol = Completer();
  var baslangicKonum = CameraPosition(target: LatLng(-8.8533562,13.2140636),zoom: 4,);

  List<Marker> isaretler = <Marker>[];

  Future<void> konumaGit() async{
    GoogleMapController controller =await haritaKontrol.future; 
      var gidilecekIsaret = Marker(markerId: MarkerId("ıd"),
      position: LatLng(-8.8533562,13.2140636),
      infoWindow: InfoWindow(title: "Angola",snippet: "Luanda"),
      );
      setState(() {
        isaretler.add(gidilecekIsaret);
      });

  var gidilecekKonum = CameraPosition(target: LatLng(-8.8533562,13.2140636),zoom:10,);

  controller.animateCamera(CameraUpdate.newCameraPosition(gidilecekKonum));

  }


 
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
              height: 650,
              child: GoogleMap(
                mapType: MapType.hybrid,
                initialCameraPosition: baslangicKonum,
                markers: Set<Marker>.of(isaretler),
                onMapCreated: (GoogleMapController controller){
                  haritaKontrol.complete(controller);
                },   
              ),
            ),
              ElevatedButton(style: ElevatedButton.styleFrom(
              minimumSize: Size.fromHeight(50),
              textStyle: TextStyle(fontSize: 24),
              ),
                child: Text("directLocation".tr),
                onPressed: () {
                  konumaGit();
              },
            ),
          ],
        ),
      ),
    );
  }
}
  