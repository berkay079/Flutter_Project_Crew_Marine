import 'package:flutter/material.dart';

class DrawerMenu extends StatefulWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  _DrawerMenuState createState() => _DrawerMenuState();
}
class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
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
                const ListTile(
                    // onTap: () {
                    //   Navigator.of(context).pushReplacement(MaterialPageRoute
                    //   (builder: (context)=> const Vessel(),
                    //   )), 
                    // },
                  leading: Icon(Icons.people_alt),
                  title: Text('Crew'),
                  trailing: Icon(Icons.chevron_right),
                ),
                const ListTile(
                  leading: Icon(Icons.water_outlined),
                  title: Text('Marine'),
                  trailing: Icon(Icons.chevron_right),
                ),
                const ListTile(
                  leading: Icon(Icons.settings_outlined),
                  title: Text('Settings'),
                  trailing: Icon(Icons.chevron_right),
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
