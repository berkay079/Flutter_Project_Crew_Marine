import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage ({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('sp'.tr),
        ),
      body: Container(
       padding: EdgeInsets.all(18),
        child: Column(
          children: [
            const Divider(),
            Center(
              child: 
              Text('sp'.tr,
              style:TextStyle(fontSize: 24),
              ),
            ),
               const Divider(),

              Text('td'.tr,
              style:TextStyle(fontSize: 24),
              ),
              const Divider(),

            ElevatedButton(style: ElevatedButton.styleFrom(
              minimumSize: Size.fromHeight(50),
              textStyle: TextStyle(fontSize: 24),
              ),
              onPressed: (){
              Get.changeTheme(Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
            }, child: 
            Text('ct'.tr),
            ),
              const Divider(),

              Text('dt'.tr,
              style:TextStyle(fontSize: 24),
              ),
              const Divider(),
            ElevatedButton(style: ElevatedButton.styleFrom(
              minimumSize: Size.fromHeight(50),
              textStyle: TextStyle(fontSize: 24),
              ),
            onPressed: (){
              Get.updateLocale(
                Get.locale == Locale('tr','TR') ? Locale('en','US') : Locale('tr', 'TR')
               );
            }, child: 
            Text('ch'.tr),
            ),
          ],
        ),
      ),
    );
  }
}