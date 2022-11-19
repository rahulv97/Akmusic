import 'package:akmusicapp/helper/colorhelper.dart';
import 'package:akmusicapp/helper/textstylehelper.dart';
import 'package:akmusicapp/views/album/album.dart';
import 'package:akmusicapp/views/artists/artistspage.dart';
import 'package:akmusicapp/views/drawer/drawer.dart';
import 'package:akmusicapp/views/geners/geners.dart';
import 'package:akmusicapp/views/playlist/playlist.dart';
import 'package:akmusicapp/views/songpage/songpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class MusicScreen extends StatefulWidget {
  const MusicScreen({Key? key}) : super(key: key);

  @override
  State<MusicScreen> createState() => _MusicScreenState();
}

class _MusicScreenState extends State<MusicScreen> {
  List songtypeList = ['All Songs', 'Playlists', 'Albums', 'Artists', 'Genres'];

  int _selectedIndex = 0;
  PageController controller = PageController();
  ScrollController scController = ScrollController();

  void scrollDown() {
    scController.jumpTo(scController.position.maxScrollExtent);
  }

  static scrollToEnd(
      {required ScrollController scController, reversed = false}) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      scController.animateTo(
        reversed
            ? scController.position.minScrollExtent
            : scController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themeColor,
      drawer: const DrawerScreen(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: themeColor,
        centerTitle: true,
        title: Text(
          "Songs",
          style: WordStyle().headingstyle,
        ),
        actions: [
          Icon(
            CupertinoIcons.search,
            color: grey,
            size: 25,
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(height: 20),
            SizedBox(
              height: 30,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  controller: scController,
                  scrollDirection: Axis.horizontal,
                  itemCount: songtypeList.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedIndex = index;
                            controller.jumpToPage(_selectedIndex);
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            // ignore: unnecessary_null_comparison
                            border: _selectedIndex != null &&
                                    _selectedIndex == index
                                ? Border(
                                    bottom: BorderSide(
                                      color: mainColor,
                                      width: 1,
                                    ),
                                  )
                                : null,
                          ),
                          child: Text(
                            songtypeList[index].toString(),
                            // ignore: unnecessary_null_comparison
                            style: _selectedIndex != null &&
                                    _selectedIndex == index
                                ? WordStyle().changesubheadingstyle
                                : WordStyle().subheadingstyle,
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            const SizedBox(height: 15),
            Container(
              height: MediaQuery.of(context).size.height - 110,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.only(bottom: 95),
              child: PageView(
                controller: controller,
                onPageChanged: (value) {
                  setState(() {
                    _selectedIndex = value;
                    scrollToEnd(scController: scController);
                  });
                },
                children: const [
                  SongPageScrren(),
                  PlaylistScreen(),
                  AlbumPageScreen(),
                  ArtistsScreen(),
                  GenersScreen(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
