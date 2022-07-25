import 'package:flutter/material.dart';
import 'package:flutter_test_project_crew_marine/ui/crew_list.dart';
import 'package:flutter_test_project_crew_marine/ui/settings_page.dart';
import 'package:get/get.dart';

import 'marine.dart';

class DrawerMenu extends StatefulWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  _DrawerMenuState createState() => _DrawerMenuState();
}
class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    final digitall = 'assets/d_o.png';

    return Drawer(
      child: Column( 
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: const Text('testuser'),
            accountEmail: const Text('testuser@gmail.com'),
            currentAccountPicture: Image.asset(
               digitall),
            otherAccountsPictures: const <Widget>[
           
            ],
          ),
          Expanded(
            child: ListView(
              children:  <Widget>[
                const ListTile(
                  leading: Icon(Icons.file_copy),
                  title: Text('Contracts'),
                  trailing: Icon(Icons.chevron_right),
                ),
                const ListTile(
                  leading: Icon(Icons.three_p_rounded),
                  title: Text('CRM'),
                  trailing: Icon(Icons.chevron_right),
                ),
                const ListTile(
                  leading: Icon(Icons.directions_boat),
                  title: Text('Vessel'),
                  trailing: Icon(Icons.chevron_right),
                ),
                InkWell(
                  onTap: () {
                     Get.to(CrewList());
                    debugPrint('asdsad');
                  },
                  splashColor: Colors.cyan,
                  child: const ListTile(
                    leading: Icon(Icons.people_alt),
                    title: Text('Crew'),
                    trailing: Icon(Icons.chevron_right),
                  ),
                ),
                InkWell(
                  onTap: () {
                     Get.to(Marine());
                    debugPrint('asdsad');
                  },
                  splashColor: Colors.cyan,
                  child: const ListTile(
                    leading: Icon(Icons.water_outlined),
                    title: Text('Marine'),
                    trailing: Icon(Icons.chevron_right),
                  ),
                ),
                  InkWell(
                  onTap: () {
                     Get.to(SettingsPage());
                  },
                  splashColor: Colors.cyan,
                  child: const ListTile(
                    leading: Icon(Icons.settings),
                    title: Text('Settings'),
                    trailing: Icon(Icons.chevron_right),
                  ),
                ),
                const Divider(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
