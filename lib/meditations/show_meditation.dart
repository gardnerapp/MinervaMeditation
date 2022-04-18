import 'package:flutter/material.dart';
import 'package:mindfullness/models/meditation.dart';

class ShowMeditation extends StatefulWidget {
  final Meditation meditation;

  const ShowMeditation({Key key, this.meditation}) : super(key: key);

  @override
  _ShowMeditationState createState() => _ShowMeditationState();
}

class _ShowMeditationState extends State<ShowMeditation> {
  bool isPlaying = false;

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
                          icon: isPlaying
                              ? Icon(Icons.play_arrow)
                              : Icon(Icons.pause),
                          onPressed: () {
                            setState(() {
                              this.isPlaying = !this.isPlaying;
                            });
                          }))),
            ],
          )
        ]));
  }
}
