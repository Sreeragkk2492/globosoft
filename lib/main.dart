import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:globosoft/view/homepage.dart';
import 'package:globosoft/view/spashscreen.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false, 
      home: Splash(),
         getPages: [
        GetPage(name: '/home', page: () => Homepage()), 
      ],
    );
  }
}