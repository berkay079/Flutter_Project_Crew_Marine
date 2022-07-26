import 'package:flutter/material.dart';
import 'package:flutter_test_project_crew_marine/model/crew.dart';
import 'package:flutter_test_project_crew_marine/data/strings.dart';
import 'package:flutter_test_project_crew_marine/ui/crew_item.dart';
import 'package:flutter_test_project_crew_marine/ui/drawer_menu.dart';
import 'package:get/get.dart';

class CrewList extends StatelessWidget {
  late final List<Crew>allCrew;

  CrewList(){
    allCrew = veriKaynaginiHazirla();
    print(allCrew);
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      drawer: const DrawerMenu(),
      appBar: AppBar(
      title: Text('crew'.tr),
      ),
      body: Center(
        child: ListView.builder(itemBuilder: (context, index){
          return CrewItem(listCrew: allCrew[index]);
        },
        itemCount: allCrew.length,),
      ),
        bottomNavigationBar: bottomNavMenu(),
    );
  }

  List<Crew> veriKaynaginiHazirla() {
    List<Crew> gecici = [];
    for(int i=0; i<12; i++){
      var crewName =Strings.First_Name[i];
      var crewLastName =Strings.Last_Name[i];
      var crewNationality =Strings.Nationality[i];
      var crewTitle =Strings.Title[i];
      var crewCertificate =Strings.Certificate[i];
      var crewCertificate2 =Strings.Certificate2[i];

      Crew eklenecek = Crew(crewName,crewLastName,crewNationality,crewTitle,crewCertificate,crewCertificate2);
      gecici.add(eklenecek);
    }
    return gecici;
  }
    Theme bottomNavMenu() {
    return Theme(
      data: ThemeData(
          canvasColor: Colors.cyan.shade100, primaryColor: Colors.orangeAccent),
      child: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.people_alt),
              label: 'Crew',
              backgroundColor: Colors.amber),

          BottomNavigationBarItem(
            // onPressed: (){
            //   Get.to(Marine());
            // },
              icon: Icon(Icons.map),
              label: 'Marine',
              backgroundColor: Colors.red),
              
        ],
        
      ),
    );
  }
}

