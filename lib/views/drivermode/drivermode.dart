import 'package:akmusicapp/helper/colorhelper.dart';
import 'package:akmusicapp/helper/textstylehelper.dart';
import 'package:akmusicapp/views/progress/linearprogress.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:math' as math;

class DriverScreen extends StatefulWidget {
  const DriverScreen({Key? key}) : super(key: key);

  @override
  State<DriverScreen> createState() => _DriverScreenState();
}

class _DriverScreenState extends State<DriverScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themeColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: themeColor,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            CupertinoIcons.clear_circled_solid,
            color: white,
            size: 30,
          ),
        ),
        centerTitle: true,
        title: Text(
          "Driver Mode",
          style: WordStyle().headingstyle,
        ),
        // actions: [
        //   IconButton(
        //     onPressed: () {},
        //     icon: Icon(
        //       CupertinoIcons.ellipsis_vertical,
        //       color: grey,
        //       size: 20,
        //     ),
        //   ),
        //   const SizedBox(width: 10),
        // ],
      ),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(height: 20),
            CircleAvatar(
              radius: 100,
              backgroundColor: white,
              child: const Image(
                image: AssetImage("assets/logo.png"),
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 40),
            Text(
              "Black or White",
              style: WordStyle().subheadingstyle,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Singer name",
                  style: WordStyle().supersmall,
                ),
                const SizedBox(width: 10),
                Icon(
                  CupertinoIcons.stop_circle_fill,
                  size: 3,
                  color: grey,
                ),
                const SizedBox(width: 10),
                Text(
                  "Album Name",
                  style: WordStyle().supersmall,
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "237",
                  style: WordStyle().foldersubheading,
                ),
                Transform.rotate(
                  angle: 120 * math.pi / 180,
                  child: Icon(
                    Icons.horizontal_rule,
                    size: 25,
                    color: white,
                  ),
                ),
                Text(
                  "338",
                  style: WordStyle().foldersubheading,
                ),
              ],
            ),
            const SizedBox(height: 50),
            const LinearProgressBar()
          ],
        ),
      ),
    );
  }
}
