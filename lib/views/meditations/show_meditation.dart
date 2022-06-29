import 'package:flutter/material.dart';
import 'package:mindfullness/models/meditation_model.dart';
import 'package:audioplayers/audioplayers.dart';

class ShowMeditation extends StatefulWidget {
  final Meditation meditation;

  const ShowMeditation({Key key, this.meditation}) : super(key: key);

  @override
  _ShowMeditationState createState() => _ShowMeditationState();
}

class _ShowMeditationState extends State<ShowMeditation> {
  AudioPlayer _audioPlayer = AudioPlayer(mode: PlayerMode.MEDIA_PLAYER);
  PlayerState _playerState = PlayerState.STOPPED;

  bool get _isPlaying => _playerState == PlayerState.PLAYING;

  @override
  void initState() {
    // Set up the audio player when the widget loads
    _audioPlayer.play(this.widget.meditation.track);
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
          title: Text(
            widget.meditation.title,
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
                        image: AssetImage('lib/assets/img/monastary.jpg'),
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
        ]));
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
