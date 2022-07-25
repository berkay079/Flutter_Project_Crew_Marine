import 'package:flutter/material.dart';
import 'package:flutter_test_project_crew_marine/translation.dart';
import 'package:flutter_test_project_crew_marine/ui/crew_list.dart';
import 'package:get/get.dart';
//import 'package:google_maps_flutter/google_maps_flutter.dart';

//AIzaSyA1oodSp1uJDpizj7UOZbrF2sIK_q_-Bz0

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Messages(), // your translations
      locale: Get.deviceLocale,
      fallbackLocale: Locale('en', 'UK'), // specify the fallback locale in case an invalid locale is selected
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink
      ),
      home: CrewList(),
    );
  }
}

