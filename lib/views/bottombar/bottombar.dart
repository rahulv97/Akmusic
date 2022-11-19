import 'package:akmusicapp/helper/colorhelper.dart';
import 'package:akmusicapp/helper/textstylehelper.dart';
import 'package:akmusicapp/views/homepage.dart';
import 'package:akmusicapp/views/music/main_music_screen.dart';
import 'package:akmusicapp/views/settings/setting.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  int selectindex = 0;

  final screens = [
    const HomePage(),
    const MusicScreen(),
    const SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectindex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: textfieldbgColor,
          selectedItemColor: mainColor,
          unselectedItemColor: grey,
          currentIndex: selectindex,
          iconSize: 30,
          onTap: (index) => setState(() => selectindex = index),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.square_split_2x2_fill,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.music_note_2,
              ),
              label: "Songs",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.gear_solid,
              ),
              label: "Settings",
            ),
          ]),
    );
  }
}
