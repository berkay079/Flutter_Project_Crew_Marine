import 'package:flutter/material.dart';
import 'package:flutter_test_project_crew_marine/ui/crew_list.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink
      ),
      home: CrewList(),
    );
  }
}

