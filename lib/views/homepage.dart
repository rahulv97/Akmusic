import 'package:akmusicapp/controllers/recentlyplayed_controller.dart';
import 'package:akmusicapp/controllers/recommended_controller.dart';
import 'package:akmusicapp/controllers/playlist_controller.dart';
import 'package:akmusicapp/helper/colorhelper.dart';
import 'package:akmusicapp/helper/textstylehelper.dart';
import 'package:akmusicapp/views/bottombar/bottombar.dart';
import 'package:akmusicapp/views/drawer/drawer.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerScreen(),
      backgroundColor: themeColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: themeColor,
        actions: [
          SizedBox(
            height: 60,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Row(
                children: [
                  const SizedBox(width: 30),
                  Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width / 1.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: textfieldbgColor,
                    ),
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Icon(
                          CupertinoIcons.search,
                          color: grey,
                          size: 20,
                        ),
                        const SizedBox(width: 30),
                        Text(
                          "Search album song",
                          style: TextStyle(
                            fontSize: 14,
                            color: grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: CustomScrollView(
        shrinkWrap: true,
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Hot Recommended",
                    style: WordStyle().headingstyle,
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 3.2,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    itemCount:
                        RecommendedController().recommendedMusicList.length,
                    itemBuilder: (BuildContext context, index) {
                      return Stack(
                        children: [
                          Positioned(
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height /
                                        4.7,
                                    width:
                                        MediaQuery.of(context).size.width / 1.3,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "${RecommendedController().recommendedMusicList[index].songImage}"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    "${RecommendedController().recommendedMusicList[index].songName}",
                                    style: WordStyle().subheadingstyle,
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    "${RecommendedController().recommendedMusicList[index].artistName}",
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
                Divider(
                  color: textfieldbgColor,
                  thickness: 1,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Playlist",
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
                                  Container(
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
                Divider(
                  color: textfieldbgColor,
                  thickness: 1,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Recently Played",
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
                const SizedBox(height: 20),
                ListView.builder(
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemCount:
                        RecentlyPlayedController().recentlyPlayedList.length,
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
                                        Icon(
                                          CupertinoIcons.play_circle,
                                          size: 25,
                                          color: mainColor,
                                        ),
                                        const SizedBox(width: 20),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "${RecentlyPlayedController().recentlyPlayedList[index].songName}",
                                              style:
                                                  WordStyle().subheadingstyle,
                                            ),
                                            const SizedBox(height: 5),
                                            Text(
                                              "${RecentlyPlayedController().recentlyPlayedList[index].artistName}",
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
                                icon: const Icon(CupertinoIcons.heart),
                                color: mainColor,
                                iconSize: 25,
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
