import 'package:flutter/material.dart';
import 'package:flutter_test_project_crew_marine/ui/crew_details.dart';
import 'package:flutter_test_project_crew_marine/ui/crew_list.dart';
import '../model/crew.dart';
import 'package:get/get.dart';


class CrewItem extends StatelessWidget {
  final Crew listCrew;
  const CrewItem({required this.listCrew, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 4,
        child: ListTile(
          onTap: (){
            Navigator.of(context)
            .push(MaterialPageRoute(builder: (context)=>CrewDetails(secilenCrew: listCrew),
              ),
            );
          },
          leading:  Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
            Icons.account_circle,
            size: 30.0
            ),
          ),
          title: Text(listCrew.title+'ns'.tr+listCrew.firstName +''+ listCrew.lastName),
          subtitle: Text('nationality'.tr +' '+ listCrew.nationality),
          trailing: Icon(
          Icons.arrow_forward_ios,size: 30.0, 
          color: Colors.pink
          ),
        ),
      ),
    );
  }
}