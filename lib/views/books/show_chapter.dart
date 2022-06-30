import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:mindfullness/models/chapter_model.dart';

import '../../main.dart';

class ShowChapter extends StatefulWidget {
  final Chapter chapter;

  const ShowChapter({Key key, this.chapter}) : super(key: key);

  @override
  _ShowChapterState createState() => _ShowChapterState();
}

class _ShowChapterState extends State<ShowChapter> {
  AudioPlayer _audioPlayer = AudioPlayer(mode: PlayerMode.MEDIA_PLAYER);
  PlayerState _playerState = PlayerState.STOPPED;

  bool get _isPlaying => _playerState == PlayerState.PLAYING;

  @override
  void initState() {
    _audioPlayer.play(this.widget.chapter.track);
    setState(() {
      _playerState = PlayerState.PLAYING;
    });
    super.initState();
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.home),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) => Home()));
          },
        ),
        title: Text(
          this.widget.chapter.title,
          style: TextStyle(fontSize: 25.0),
        ),
      ),
      body: Stack(children: [
        Column(
          children: [
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height * .8,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('lib/assets/img/library.jpg'),
                      fit: BoxFit.cover),
                ),
              ),
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Please Wait One Moment....",
              style: TextStyle(fontSize: 16.0, color: Colors.white),
            ),
            Center(
                child: Card(
                    shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(45)),
                    color: Colors.transparent,
                    child: IconButton(
                        splashColor: Colors.deepOrangeAccent,
                        splashRadius: 80.0,
                        alignment: Alignment.topCenter,
                        color: Colors.white,
                        iconSize: 200,
                        icon: _isPlaying
                            ? Icon(Icons
                                .pause) // Pause Icon if playing, Play if not playing
                            : Icon(Icons.play_arrow),
                        onPressed: () => _playPause()))),
          ],
        )
      ]),
    );
  }

  _playPause() async {
    if (_playerState == PlayerState.PLAYING) {
      final playerResult = await _audioPlayer.pause();
      if (playerResult == 1) {
        setState(() {
          _playerState = PlayerState.PAUSED;
        });
      }
    } else if (_playerState == PlayerState.PAUSED) {
      final playerResult = await _audioPlayer.resume();
      if (playerResult == 1) {
        setState(() {
          _playerState = PlayerState.PLAYING;
        });
      }
    }
  }
}
