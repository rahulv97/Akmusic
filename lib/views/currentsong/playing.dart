import 'package:akmusicapp/helper/textstylehelper.dart';
import 'package:akmusicapp/views/album/albumpopuplist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../helper/colorhelper.dart';

class NowPlayingScreen extends StatelessWidget {
  const NowPlayingScreen({Key? key}) : super(key: key);

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
          "Now Playing",
          style: WordStyle().headingstyle,
        ),
        actions: [
          PopupMenuButton(
            color: textfieldbgColor,
            child: Icon(
              Icons.more_vert,
              color: white,
              size: 20,
            ),
            itemBuilder: (BuildContext context) {
              return playingpopList.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(
                    choice,
                    style: WordStyle().folderheading,
                  ),
                );
              }).toList();
            },
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
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
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "3:15",
                    style: WordStyle().foldersubheading,
                  ),
                  const SizedBox(width: 10),
                  Container(height: 10, width: 1, color: white),
                  const SizedBox(width: 10),
                  Text(
                    "4:50",
                    style: WordStyle().foldersubheading,
                  ),
                ],
              ),
              const SizedBox(height: 30),
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
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Container(
                  height: 80,
                  width: MediaQuery.of(context).size.width / 1.3,
                  color: white,
                ),
              ),
              Divider(color: textfieldbgColor),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    CupertinoIcons.backward_end_alt_fill,
                    size: 40,
                    color: white,
                  ),
                  const SizedBox(width: 20),
                  Icon(
                    CupertinoIcons.play_circle_fill,
                    size: 40,
                    color: white,
                  ),
                  const SizedBox(width: 20),
                  Icon(
                    CupertinoIcons.forward_end_alt_fill,
                    size: 40,
                    color: white,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Icon(CupertinoIcons.music_note_list,
                            size: 20, color: white),
                        Text(
                          "Playlist",
                          style: WordStyle().smallicon,
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Icon(CupertinoIcons.shuffle, size: 20, color: white),
                        Text(
                          "Shuffle",
                          style: WordStyle().smallicon,
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Icon(CupertinoIcons.repeat, size: 20, color: white),
                        Text(
                          "Repeat",
                          style: WordStyle().smallicon,
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Icon(CupertinoIcons.heart, size: 20, color: white),
                        Text(
                          "Favourite",
                          style: WordStyle().smallicon,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
