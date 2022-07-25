import 'package:flutter/material.dart';
import 'package:flutter_test_project_crew_marine/model/crew.dart';
import 'package:get/get.dart';


class CrewDetails extends StatelessWidget {
  final Crew secilenCrew;
  const CrewDetails({required this.secilenCrew, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('crew'.tr),
      ),
      body: Center(  

        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Center(
            child: Column(
              children: [
                  const Divider(),
                Text(secilenCrew.title, style:TextStyle(fontSize: 24),),
                  const Divider(),
                Text('fs'.tr + secilenCrew.firstName, style:TextStyle(fontSize: 24),),
                  const Divider(),
                Text('ls'.tr + secilenCrew.lastName, style:TextStyle(fontSize: 24),),
                  const Divider(),
                Text('nationality'.tr + secilenCrew.nationality, style:TextStyle(fontSize: 24),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}