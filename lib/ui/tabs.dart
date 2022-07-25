// import 'package:flutter/material.dart';
// import 'package:flutter_test_project_crew_marine/ui/marine.dart';

// class tabs extends StatefulWidget {
//   tabs({Key? key}) : super(key: key);

//   @override
//   State<tabs> createState() => _tabsState();
// }

// class _tabsState extends State<tabs> {
//   int secilenMenuItem = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }



// Theme bottomNavMenu() {
//     return Theme(
//       data: ThemeData(
//           canvasColor: Colors.cyan.shade100, primaryColor: Colors.orangeAccent),
//       child: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//               icon: Icon(Icons.people_alt),
//               label: 'Crew',
//               backgroundColor: Colors.amber),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.map),
//               label: 'Marine',
//               backgroundColor: Colors.red),
       
//         ],
//         type: BottomNavigationBarType.shifting,
//         currentIndex: secilenMenuItem,
//         onTap: (index) {
//           setState(() {
//             secilenMenuItem = index;
//             if (index == 1) {
//               Navigator.of(context)
//                   .push(MaterialPageRoute(builder: (context) => Marine()))
//                   .then((bb) {
//                 secilenMenuItem = 0;
//               });
//             }
//           });
//         },
//       ),
//     );
//   }
// }