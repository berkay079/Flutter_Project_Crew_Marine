import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../translation.dart';

class Strings {
  static const String APP_NAME = "Crew List";

  static const List<String> First_Name = [
    "Sheryll ",
    "Elinor ",
    "Gemma ",
    "Marcia ",
    "Kailee ",
    "Şerif ",
    "Ayden ",
    "Ivor ",
    "Destiny ",
    "Brook ",
    "Viviette ",
    "Aden "
  ];

    static const List<String> Last_Name = [
    "Damion",
    "Handan",
    "Elliott",
    "Presley",
    "Cherice",
    "Hiranur",
    "Parry",
    "Odin",
    "Eveleen",
    "Mert",
    "Houston",
    "Ravenna"
  ];

    static const List<String> Nationality = [
    "North Macedonia",
    "Trinidad and Tobago",
    "Kenya",
    "Iran",
    "Timor-Leste",
    "Finland",
    "Malawi",
    "Benin",
    "Kenya",
    "Saint Kitts and Nevis",
    "United Arab Emirates",
    "Mauritania"
  ];

     static const List<String> Title = [
    "Captain",
    "Engineer",
    "Cook",
    "Captain2",
    "Engineer2",
    "Cook2",
    "Captain3",
    "Engineer3",
    "Cook3",
    "Captain4",
    "Engineer4",
    "Cook4",
  ];
   static const List<String> Certificate = [
    "Certifica name1: Türk Loydu Belgesi + Certifica Date: 18.03.2015",
    "Certifica name2: Russian Mairitime Register of Shipping Certificate + Certifica Date: 12.02.2019",
    "Certifica name3: STCW + Certifica Date: 18.01.2016",
    "Certifica name4: STCW Temel ilkyardım eğitimi + Certifica Date: 12.02.2017",
    "Certifica name5: STCW Denizde kişisel can kurtarma teknikleri eğitimi + Certifica Date: 16.09.2013",
    "Certifica name6: STCW + Certifica Date: 12.02.2019",
    "Certifica name7: STCW + Certifica Date: 12.02.2019",
    "Certifica name8: STCW + Certifica Date: 12.02.2019",
    "Certifica name9: STCW + Certifica Date: 12.02.2019",
    "Certifica name10: STCW + Certifica Date: 12.02.2019",
    "Certifica name11: STCW + Certifica Date: 12.02.2019",
    "Certifica name12: STCW + Certifica Date: 12.02.2019",
  ];
   static const List<String> Certificate2 = [
    "Certifica name5: STCW Denizde kişisel can kurtarma teknikleri eğitimi + Certifica Date: 16.09.2013",
    "Certifica name3: STCW + Certifica Date: 18.01.2016",
    "Certifica name1: Türk Loydu Belgesi + Certifica Date: 18.03.2015",
    "Certifica name2: Russian Mairitime Register of Shipping Certificate + Certifica Date: 12.02.2019",
    "Certifica name3: STCW + Certifica Date: 18.01.2016",
    "Certifica name1: Türk Loydu Belgesi + Certifica Date: 18.03.2015",
    "Certifica name4: STCW Temel ilkyardım eğitimi + Certifica Date: 12.02.2017",
    "Certifica name5: STCW Denizde kişisel can kurtarma teknikleri eğitimi + Certifica Date: 16.09.2013",
    "Certifica name6: STCW + Certifica Date: 12.02.2019",
    "Certifica name7: STCW + Certifica Date: 12.02.2019",
    "Certifica name8: STCW + Certifica Date: 12.02.2019",
    "Certifica name9: STCW + Certifica Date: 12.02.2019",
    "Certifica name10: STCW + Certifica Date: 12.02.2019",
    "Certifica name11: STCW + Certifica Date: 12.02.2019",
    "Certifica name12: STCW + Certifica Date: 12.02.2019",
  ];

}


class name extends StatelessWidget {
  const name({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Messages(), // your translations
      locale: Get.deviceLocale,
      fallbackLocale: Locale('en', 'UK'), // specify the fallback locale in case an invalid locale is selected.
     
    );
  }
}