import 'package:akmusicapp/helper/colorhelper.dart';
import 'package:akmusicapp/helper/textstylehelper.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LinearProgressBar extends StatefulWidget {
  const LinearProgressBar({Key? key}) : super(key: key);

  @override
  State<LinearProgressBar> createState() => _LinearProgressBarState();
}

class _LinearProgressBarState extends State<LinearProgressBar> {
  final audioPlayer = AudioPlayer();
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  String formatTime(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = twoDigits(duration.inHours);
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return [
      if (duration.inHours > 0) hours,
      minutes,
      seconds,
    ].join(':');
  }

  @override
  void initState() {
    super.initState();

    audioPlayer.onPlayerStateChanged.listen((State) {
      setState(() {
        isPlaying = State == PlayerState.playing;
      });
    });

    audioPlayer.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });

    audioPlayer.onPositionChanged.listen((newPosition) {
      setState(() {
        position = newPosition;
      });
    });
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Slider(
          activeColor: mainColor,
          inactiveColor: textfieldbgColor,
          min: 0,
          value: position.inSeconds.toDouble(),
          max: duration.inSeconds.toDouble(),
          onChanged: ((value) async {
            final position = Duration(seconds: double.parse("$value").toInt());
            await audioPlayer.seek(position);
            await audioPlayer.resume();
          }),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                formatTime(position),
                style: WordStyle().foldersubheading,
              ),
              Text(
                formatTime(duration - position),
                style: WordStyle().foldersubheading,
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              CupertinoIcons.backward_end_alt_fill,
              size: 50,
              color: white,
            ),
            const SizedBox(width: 20),
            IconButton(
              onPressed: () async {
                if (isPlaying) {
                  await audioPlayer.pause();
                } else {
                  await audioPlayer.play(UrlSource(
                      'https://pagalworld.com.se/siteuploads/files/sfd130/64596/Chad%20Gayi%20Chad%20Gayi_64(PagalWorld.com.se).mp3'));
                }
              },
              icon: Icon(
                isPlaying ? Icons.pause_circle : Icons.play_circle,
              ),
              iconSize: 80,
              color: Colors.white,
            ),
            const SizedBox(width: 20),
            Icon(
              CupertinoIcons.forward_end_alt_fill,
              size: 50,
              color: white,
            ),
          ],
        ),
      ],
    );
  }
}
