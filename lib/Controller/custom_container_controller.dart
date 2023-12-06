import 'dart:math';

import 'package:flutter/material.dart';
//هعمل كلاس خاص بالويدجيت وهخليه يورث من  ChangeNotifier
class CustomContainerController extends ChangeNotifier {

  //هحدد الاتربيوت اللي محتاج اني اغير علثيها داخل الويدجيت
  double height = 100;
  double width = 100;
  Color color = Colors.red;

  //هعمل ميثود هتقوم بعمل التغغير علي الاتربيوت الخاصة بالويدجيت داخل الكرونترولر
  void changeContainerAttrbuts() {
    height = Random().nextDouble() * 200;
    width = Random().nextDouble() * 200;
    color = Color.fromARGB(255, Random().nextInt(255), Random().nextInt(255), Random().nextInt(255));
    notifyListeners();
  }
}