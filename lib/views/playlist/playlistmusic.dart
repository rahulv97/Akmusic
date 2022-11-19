import 'package:akmusicapp/controllers/songslist_controller.dart';
import 'package:akmusicapp/helper/colorhelper.dart';
import 'package:akmusicapp/helper/textstylehelper.dart';
import 'package:akmusicapp/views/album/albumpopuplist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PlaylistMusicScreen extends StatelessWidget {
  const PlaylistMusicScreen({Key? key}) : super(key: key);

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
          "Playlist",
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
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    CupertinoIcons.backward_end_alt_fill,
                    size: 35,
                    color: white,
                  ),
                  CircleAvatar(
                    radius: 80,
                    backgroundColor: white,
                    child: const Image(
                      image: AssetImage("assets/logo.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Icon(
                    CupertinoIcons.forward_end_alt_fill,
                    size: 35,
                    color: white,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
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
            const SizedBox(height: 10),
            Text(
              "Black or White",
              style: WordStyle().subheadingstyle,
            ),
            const SizedBox(height: 10),
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
            const SizedBox(height: 20),
            Container(
              height: MediaQuery.of(context).size.height / 1,
              padding: const EdgeInsets.only(bottom: 350),
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: AllSongsController().allsongsList.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, index) {
                    return Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: SizedBox(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 45,
                                        width: 45,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "${AllSongsController().allsongsList[index].songImage}"),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      const SizedBox(width: 20),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "${AllSongsController().allsongsList[index].songName}",
                                            style: WordStyle().subheadingstyle,
                                          ),
                                          const SizedBox(height: 5),
                                          Text(
                                            "${AllSongsController().allsongsList[index].artistName}",
                                            style: WordStyle().smalltext,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(CupertinoIcons.play_circle),
                              color: mainColor,
                              iconSize: 30,
                            ),
                          ],
                        ),
                        Divider(
                          color: textfieldbgColor,
                        ),
                        const SizedBox(height: 5),
                      ],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
