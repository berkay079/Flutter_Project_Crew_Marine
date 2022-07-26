import 'package:flutter/material.dart';
import 'package:flutter_test_project_crew_marine/model/crew.dart';

class CrewDetails extends StatelessWidget {
  final Crew secilenCrew;
  const CrewDetails({required this.secilenCrew, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text(secilenCrew.title),
            Text(secilenCrew.firstName),
            Text(secilenCrew.lastName),
            Text(secilenCrew.nationality),
          ],
        ),
      ),
    );
  }
}