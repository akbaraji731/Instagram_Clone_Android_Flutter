import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram_skodi/bottom/bottom.dart';
import 'package:video_player/video_player.dart';

class StoryCek extends StatefulWidget {
  const StoryCek({Key? key}) : super(key: key);

  @override
  _StoryCekState createState() => _StoryCekState();
}

class _StoryCekState extends State<StoryCek> with TickerProviderStateMixin {
  late AnimationController splashController;
  late VideoPlayerController videoController;

  final durasi = 10;

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.bottom]);
    splashController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    )..addListener(() {
        setState(() {});
      });
    splashController.repeat(reverse: false);
    super.initState();
    videoController =
        VideoPlayerController.asset('assets/story/video_story.mp4');
    videoController.addListener(() {
      setState(() {});
    });
    videoController.initialize().then((_) => setState(() {}));
    videoController.play();
    _menjalankan();
  }

  @override
  void dispose() {
    videoController.dispose();
    splashController.dispose();
    super.dispose();
  }

  _menjalankan() async {
    var _duration = Duration(seconds: durasi);
    return Timer(_duration, kembalikeberanda);
  }

  void kembalikeberanda() {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (BuildContext context) => const Bottom()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Container(
              margin: const EdgeInsets.only(left: 30),
              height: 3,
              child: LinearProgressIndicator(
                backgroundColor: Colors.grey,
                color: Colors.white,
                value: splashController.value,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.only(left: 32),
              child: Row(
                children: [
                  Ink(
                    child: InkWell(
                      onTap: () {},
                      child: const Image(
                        image: AssetImage("assets/story/my.png"),
                        height: 38,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Ink(
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        'Fajarul',
                        style: GoogleFonts.ubuntu(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        backgroundColor: Colors.grey[800],
        body: VideoPlayer(videoController));
  }
}
