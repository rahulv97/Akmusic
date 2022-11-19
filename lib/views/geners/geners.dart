import 'package:akmusicapp/helper/textstylehelper.dart';
import 'package:flutter/material.dart';

class GenersScreen extends StatefulWidget {
  const GenersScreen({Key? key}) : super(key: key);

  @override
  State<GenersScreen> createState() => _GenersScreenState();
}

class _GenersScreenState extends State<GenersScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: GridView.builder(
          itemCount: 20,
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 5,
          ),
          itemBuilder: (BuildContext int, index) {
            return Padding(
              padding: const EdgeInsets.all(5),
              child: Stack(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/music3.jpeg"),
                            fit: BoxFit.cover)),
                  ),
                  Positioned(
                    top: 50,
                    left: 50,
                    child: Column(
                      children: [
                        Text(
                          "History",
                          style: WordStyle().folderheading,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "History",
                          style: WordStyle().foldersubheading,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
