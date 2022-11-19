import 'package:akmusicapp/helper/textstylehelper.dart';
import 'package:akmusicapp/views/album/albumpopuplist.dart';
import 'package:akmusicapp/views/artists/artists_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../helper/colorhelper.dart';

class ArtistsScreen extends StatefulWidget {
  const ArtistsScreen({Key? key}) : super(key: key);

  @override
  State<ArtistsScreen> createState() => _ArtistsScreenState();
}

class _ArtistsScreenState extends State<ArtistsScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: ListView.builder(
          itemCount: 20,
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (BuildContext context, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 10),
              child: GestureDetector(
                onTap: () {
                  Get.to(() => const ArtistsDetailsScreen());
                },
                child: Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/music2.jpeg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width / 1.6,
                      color: Colors.transparent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Beyonce",
                                style: WordStyle().folderheading,
                              ),
                              PopupMenuButton(
                                color: textfieldbgColor,
                                child: Icon(
                                  Icons.more_vert,
                                  color: white,
                                ),
                                itemBuilder: (BuildContext context) {
                                  return albumlist.map((String choice) {
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
                            ],
                          ),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              Text(
                                "4 Albums",
                                style: WordStyle().foldersubheading,
                              ),
                              const SizedBox(width: 30),
                              Icon(
                                CupertinoIcons.circle_fill,
                                size: 4,
                                color: white,
                              ),
                              const SizedBox(width: 30),
                              Text(
                                "17 Songs",
                                style: WordStyle().foldersubheading,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
