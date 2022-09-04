import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/assets/image/transtation.dart';
import 'package:flutter_application_1/home_screen.dart';
import 'package:get/get.dart';

void main(List<String> args) {
  runApp(const Main());
}
class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
    translations: translation(), // your translations
    locale: Locale('en', 'US'), 
        debugShowCheckedModeBanner: false,
        home: Home_Screen(),
    );
  }
}