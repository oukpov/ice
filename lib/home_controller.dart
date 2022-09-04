import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{
  void changelauguge()
  {
      var code = Get.locale!.languageCode;
      if(code=='kh')
      {
        var locale=Locale('en','US');
        Get.updateLocale(locale);
      }else{
        var locale=Locale('kh','KH');
        Get.updateLocale(locale);
      }
      print('languageCode${code}');
  }
}