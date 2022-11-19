import 'package:akmusicapp/views/bottombar/bottombar.dart';
import 'package:akmusicapp/views/homepage.dart';
import 'package:akmusicapp/views/music/main_music_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BottomBarScreen(),
    );
  }
}
