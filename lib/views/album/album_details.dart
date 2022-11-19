import 'dart:ui';
import 'package:akmusicapp/helper/colorhelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../helper/textstylehelper.dart';

class AlbumbDetailsScreen extends StatefulWidget {
  const AlbumbDetailsScreen({Key? key}) : super(key: key);

  @override
  State<AlbumbDetailsScreen> createState() => _AlbumbDetailsScreenState();
}

class _AlbumbDetailsScreenState extends State<AlbumbDetailsScreen> {
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
          "Album Details",
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
                  top: 20,
                  left: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 110,
                            width: 110,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                  image: AssetImage("assets/album.png"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "History",
                                  style: WordStyle().headingstyle,
                                ),
                                const SizedBox(height: 20),
                                Text(
                                  "by Michael Jackson",
                                  style: WordStyle().foldersubheading,
                                ),
                                const SizedBox(height: 15),
                                Row(
                                  children: [
                                    Text(
                                      "1996",
                                      style: WordStyle().foldersubheading,
                                    ),
                                    const SizedBox(width: 10),
                                    Text(
                                      "18 Songs",
                                      style: WordStyle().foldersubheading,
                                    ),
                                    const SizedBox(width: 10),
                                    Text(
                                      "64 min",
                                      style: WordStyle().foldersubheading,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 30,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                color: mainColor,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    CupertinoIcons.play,
                                    size: 20,
                                    color: white,
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    "Play",
                                    style: WordStyle().foldersubheading,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            height: 30,
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              border: Border.all(color: white),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.share,
                                  size: 20,
                                  color: white,
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  "Share",
                                  style: WordStyle().foldersubheading,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            height: 30,
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              border: Border.all(color: white),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  CupertinoIcons.heart,
                                  size: 20,
                                  color: white,
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  "Add to Favourites",
                                  style: WordStyle().foldersubheading,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: MediaQuery.of(context).size.height / 1.7,
              child: ListView.builder(
                  itemCount: 50,
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
            ),
          ],
        ),
      ),
    );
  }
}
