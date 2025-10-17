import 'package:booklyapp/Constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'feature/splash/presentation/views/booklyHome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(scaffoldBackgroundColor: kPrimaryColor),
      home: HomeBookly(),
    );
  }
}
