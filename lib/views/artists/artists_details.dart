import 'dart:ui';

import 'package:akmusicapp/helper/textstylehelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../helper/colorhelper.dart';

class ArtistsDetailsScreen extends StatefulWidget {
  const ArtistsDetailsScreen({Key? key}) : super(key: key);

  @override
  State<ArtistsDetailsScreen> createState() => _ArtistsDetailsScreenState();
}

class _ArtistsDetailsScreenState extends State<ArtistsDetailsScreen> {
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
            Icons.arrow_back_ios,
            color: white,
            size: 25,
          ),
        ),
        centerTitle: true,
        title: Text(
          "Artists Details",
          style: WordStyle().headingstyle,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.search,
              color: grey,
              size: 25,
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 4,
                  width: MediaQuery.of(context).size.width,
                  child: ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaY: 5, sigmaX: 5),
                    child: Image.asset(
                      'assets/album.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 40,
                  left: 50,
                  child: Column(
                    children: [
                      Text(
                        "History",
                        style: WordStyle().headingstyle,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "History History History History History",
                        style: WordStyle().smalltext,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 20),
              child: Text(
                "Albums",
                style: WordStyle().headingstyle,
              ),
            ),
            SizedBox(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 20,
                  itemBuilder: (BuildContext context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 120,
                            width: MediaQuery.of(context).size.width / 3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                  image: AssetImage("assets/music2.jpeg"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          const SizedBox(height: 10),
                          SizedBox(
                            width: 120,
                            child: Text(
                              "Album Name",
                              overflow: TextOverflow.ellipsis,
                              style: WordStyle().folderheading,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "1998",
                            style: WordStyle().smalltext,
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 30, top: 20),
              child: Text(
                "All Songs",
                style: WordStyle().headingstyle2,
              ),
            ),
            ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: 10,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, index) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    CupertinoIcons.play_circle,
                                    color: mainColor,
                                    size: 30,
                                  ),
                                ),
                                const SizedBox(width: 20),
                                SizedBox(
                                  width: 120,
                                  child: Text(
                                    maxLines: 1,
                                    "Billie jean Billie jean Billie jean",
                                    overflow: TextOverflow.ellipsis,
                                    softWrap: false,
                                    style: WordStyle().folderheading,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "3:56",
                              style: WordStyle().smalltext,
                            ),
                            Icon(
                              Icons.more_horiz,
                              color: grey,
                              size: 30,
                            ),
                          ],
                        ),
                        Divider(
                          color: textfieldbgColor,
                        ),
                      ],
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
