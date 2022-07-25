import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'contracts': 'Contracts',
          'button_text': 'you have clicked the button',
          'ct': 'Change theme',
          'sp': 'Settings Page',
          'ch': 'Change language to Turkish',
          'crew': 'Crew',
          'dt': 'You can change the language in the application to Turkish by clicking this button.',
          'td':'You can switch the theme in the application to dark mode by clicking this button.',
          'nationality': 'Nationality : ',
          'ns':' Name&LastName : ',
          'fs': 'First Name : ',
          'ls':'Last Name : ',
          'directLocation':'Direct Location',
        },
        'tr_TR': {
          'contracts': 'kontrat',
          'button_text': 'butona tıkladınız',
          'sp': 'Uygulama içi ayarlar',
          'ct': 'Tema değiştir',
          'ch': 'Dili değiştir İngilizce yap',
          'crew': 'Mürettebat',
          'dt': 'bu butona tıklayarak uygulamadaki dili ingilizce olarak değiştirebilirsiniz.',
          'td':'Bu butona tıklayarak uygulamadaki temayı karanlık moda geçirebilirsiniz.',
          'nationality': 'Ülke : ',
          'ns':' Ad&Soyad : ',
          'fs': 'İsim : ',
          'ls':'Soyisim : ',
          'directLocation':'Konuma git',






        }
      };
}