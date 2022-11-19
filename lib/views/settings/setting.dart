// ignore_for_file: unnecessary_import

import 'package:akmusicapp/helper/colorhelper.dart';
import 'package:akmusicapp/helper/textstylehelper.dart';
import 'package:akmusicapp/views/settings/settingitemmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themeColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: themeColor,
        // leading: IconButton(
        //   onPressed: () {
        //     Get.back();
        //   },
        //   icon: Icon(
        //     Icons.arrow_back_ios,
        //     color: white,
        //     size: 25,
        //   ),
        // ),
        centerTitle: true,
        title: Text(
          "Settings",
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
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: SettingItem().items.length,
              itemBuilder: (BuildContext context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 35,
                            width: 30,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "${SettingItem().items[index].image}"),
                                    fit: BoxFit.contain)),
                          ),
                          const SizedBox(width: 40),
                          Text("${SettingItem().items[index].name}",
                              style: WordStyle().folderheading),
                        ],
                      ),
                      Divider(color: textfieldbgColor)
                    ],
                  ),
                );
              }),
        ),
      ),
    );
  }
}
