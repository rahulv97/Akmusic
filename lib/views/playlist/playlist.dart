import 'package:akmusicapp/controllers/playlist_controller.dart';
import 'package:akmusicapp/helper/colorhelper.dart';
import 'package:akmusicapp/helper/textstylehelper.dart';
import 'package:akmusicapp/views/playlist/playlistmusic.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PlaylistScreen extends StatefulWidget {
  const PlaylistScreen({Key? key}) : super(key: key);

  @override
  State<PlaylistScreen> createState() => _PlaylistScreenState();
}

class _PlaylistScreenState extends State<PlaylistScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: 1,
        itemBuilder: (BuildContext context, index) {
          return Column(
            children: [
              Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 4,
                        width: MediaQuery.of(context).size.width / 2,
                        // color: mainColor,
                        decoration: BoxDecoration(
                          color: grey,
                          image: const DecorationImage(
                              image: AssetImage("assets/music5.jpeg"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 10,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 2.2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "My Top Tracks",
                                    style: WordStyle().folderheading,
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    "100 songs",
                                    style: WordStyle().foldersubheading,
                                  ),
                                ],
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  CupertinoIcons.play_circle_fill,
                                  color: white,
                                  size: 40,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 4,
                        width: MediaQuery.of(context).size.width / 2,
                        // color: mainColor,
                        decoration: BoxDecoration(
                          color: grey,
                          image: const DecorationImage(
                              image: AssetImage("assets/music1.jpeg"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 10,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 2.2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Latest Added",
                                    style: WordStyle().folderheading,
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    "100 songs",
                                    style: WordStyle().foldersubheading,
                                  ),
                                ],
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  CupertinoIcons.play_circle_fill,
                                  color: white,
                                  size: 40,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 4,
                        width: MediaQuery.of(context).size.width / 2,
                        // color: mainColor,
                        decoration: BoxDecoration(
                          color: grey,
                          image: const DecorationImage(
                              image: AssetImage("assets/music3.jpeg"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 10,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 2.2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "History",
                                    style: WordStyle().folderheading,
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    "100 songs",
                                    style: WordStyle().foldersubheading,
                                  ),
                                ],
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  CupertinoIcons.play_circle_fill,
                                  color: white,
                                  size: 40,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 4,
                        width: MediaQuery.of(context).size.width / 2,
                        // color: mainColor,
                        decoration: BoxDecoration(
                          color: grey,
                          image: const DecorationImage(
                              image: AssetImage("assets/music4.jpeg"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 10,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 2.2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Favourites",
                                    style: WordStyle().folderheading,
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    "100 songs",
                                    style: WordStyle().foldersubheading,
                                  ),
                                ],
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  CupertinoIcons.play_circle_fill,
                                  color: white,
                                  size: 40,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "My Playlists",
                      style: WordStyle().headingstyle,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "View All",
                        style: TextStyle(
                            color: mainColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 3.8,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemCount: PlayListController().playList.length,
                  itemBuilder: (BuildContext context, index) {
                    return Stack(
                      children: [
                        Positioned(
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Get.to(() => const PlaylistMusicScreen());
                                  },
                                  child: Container(
                                    height: 120,
                                    width:
                                        MediaQuery.of(context).size.width / 2.5,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "${PlayListController().playList[index].songImage}"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  "${PlayListController().playList[index].songName}",
                                  style: WordStyle().subheadingstyle,
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  "${PlayListController().playList[index].artistName}",
                                  style: WordStyle().smalltext,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          );
        });
  }
}
