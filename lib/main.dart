import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maybank_flutter_clone/root_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Maybank Flutter clone',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: const Color(0xFFFCFCFC),
      ),
      home: RootPage(),
    );
  }
}
