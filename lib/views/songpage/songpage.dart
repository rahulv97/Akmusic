import 'package:akmusicapp/helper/textstylehelper.dart';
import 'package:akmusicapp/views/currentsong/playing.dart';
import 'package:akmusicapp/views/drawer/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/songslist_controller.dart';
import '../../helper/colorhelper.dart';

class SongPageScrren extends StatefulWidget {
  const SongPageScrren({Key? key}) : super(key: key);

  @override
  State<SongPageScrren> createState() => _SongPageScrrenState();
}

class _SongPageScrrenState extends State<SongPageScrren> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: AllSongsController().allsongsList.length,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, index) {
          return Column(
            children: [
              GestureDetector(
                onTap: () {
                  Get.to(() => const NowPlayingScreen());
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
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
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                    IconButton(
                      onPressed: () {
                        Get.to(() => const NowPlayingScreen());
                      },
                      icon: const Icon(CupertinoIcons.play_circle),
                      color: mainColor,
                      iconSize: 30,
                    ),
                  ],
                ),
              ),
              Divider(
                color: textfieldbgColor,
              ),
              const SizedBox(height: 5),
            ],
          );
        });
  }
}
