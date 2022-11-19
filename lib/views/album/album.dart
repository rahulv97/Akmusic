import 'package:akmusicapp/helper/colorhelper.dart';
import 'package:akmusicapp/helper/textstylehelper.dart';
import 'package:akmusicapp/views/album/album_details.dart';
import 'package:akmusicapp/views/album/albumpopuplist.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AlbumPageScreen extends StatefulWidget {
  const AlbumPageScreen({Key? key}) : super(key: key);

  @override
  State<AlbumPageScreen> createState() => _AlbumPageScreenState();
}

class _AlbumPageScreenState extends State<AlbumPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: GridView.builder(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          itemCount: 10,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.55,
            crossAxisSpacing: 10,
            mainAxisSpacing: 5,
          ),
          itemBuilder: (BuildContext int, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(() => const AlbumbDetailsScreen());
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height / 3,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/album.png"),
                          fit: BoxFit.fitHeight),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "History",
                        style: TextStyle(color: white),
                      ),
                      PopupMenuButton(
                        color: textfieldbgColor,
                        child: Icon(
                          Icons.more_vert,
                          color: white,
                          size: 20,
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
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Micheal Jackson",
                        style: WordStyle().foldersubheading,
                      ),
                      Text(
                        "10 Songs",
                        style: WordStyle().foldersubheading,
                      ),
                    ],
                  ),
                ),
              ],
            );
          }),
    );
  }
}
