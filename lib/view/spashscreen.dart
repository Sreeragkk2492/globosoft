import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 2), (){
     Get.offNamed('/home');
    });
    return Scaffold(
      body: Center(child: Text('globosoft'),),
    );
  }
}