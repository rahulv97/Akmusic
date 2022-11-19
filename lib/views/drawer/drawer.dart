import 'package:akmusicapp/helper/colorhelper.dart';
import 'package:akmusicapp/helper/textstylehelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        width: MediaQuery.of(context).size.width / 1.4,
        backgroundColor: themeColor,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              height: MediaQuery.of(context).size.height / 3.5,
              color: black.withOpacity(0.5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 10),
                  const Image(
                    image: AssetImage("assets/logo.png"),
                    height: 90,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Muzic",
                    style: WordStyle().headingstyle,
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text(
                            "360",
                            style: WordStyle().smalltext,
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "Song",
                            style: WordStyle().subheadingstyle,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "260",
                            style: WordStyle().smalltext,
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "Album",
                            style: WordStyle().subheadingstyle,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "160",
                            style: WordStyle().smalltext,
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "Artist",
                            style: WordStyle().subheadingstyle,
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.palette_outlined,
                        color: mainColor,
                        size: 25,
                      ),
                      const SizedBox(width: 20),
                      Text(
                        "Themes",
                        style: WordStyle().subheadingstyle,
                      ),
                    ],
                  ),
                  Divider(
                    color: textfieldbgColor,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(
                        CupertinoIcons.scissors,
                        color: mainColor,
                        size: 25,
                      ),
                      const SizedBox(width: 20),
                      Text(
                        "Ringtone Cutter",
                        style: WordStyle().subheadingstyle,
                      ),
                    ],
                  ),
                  Divider(
                    color: textfieldbgColor,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(
                        CupertinoIcons.stopwatch,
                        color: mainColor,
                        size: 25,
                      ),
                      const SizedBox(width: 20),
                      Text(
                        "Sleep Time",
                        style: WordStyle().subheadingstyle,
                      ),
                    ],
                  ),
                  Divider(
                    color: textfieldbgColor,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(
                        Icons.equalizer,
                        color: mainColor,
                        size: 25,
                      ),
                      const SizedBox(width: 20),
                      Text(
                        "Equalizer",
                        style: WordStyle().subheadingstyle,
                      ),
                    ],
                  ),
                  Divider(
                    color: textfieldbgColor,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(
                        CupertinoIcons.car_detailed,
                        color: mainColor,
                        size: 25,
                      ),
                      const SizedBox(width: 20),
                      Text(
                        "Drive Mode",
                        style: WordStyle().subheadingstyle,
                      ),
                    ],
                  ),
                  Divider(
                    color: textfieldbgColor,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(
                        CupertinoIcons.folder,
                        color: mainColor,
                        size: 25,
                      ),
                      const SizedBox(width: 20),
                      Text(
                        "Hidden Folders",
                        style: WordStyle().subheadingstyle,
                      ),
                    ],
                  ),
                  Divider(
                    color: textfieldbgColor,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(
                        Icons.scanner,
                        color: mainColor,
                        size: 25,
                      ),
                      const SizedBox(width: 20),
                      Text(
                        "Scan Media",
                        style: WordStyle().subheadingstyle,
                      ),
                    ],
                  ),
                  Divider(
                    color: textfieldbgColor,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
