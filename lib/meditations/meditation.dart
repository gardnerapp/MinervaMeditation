import 'package:flutter/material.dart';

class Meditation extends StatefulWidget {
  // TODO implement random photo as background, add sound player from remote
  final String title;

  const Meditation({Key key, this.title}) : super(key: key);

  @override
  _MeditationState createState() => _MeditationState();
}

class _MeditationState extends State<Meditation> {
  bool isPlaying = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            widget.title,
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
                          icon: isPlaying ? Icon(Icons.play_arrow) : Icon(Icons.pause),
                          onPressed: () {
                            setState(() {
                              this.isPlaying = !this.isPlaying;
                            });
                          }))),
              SliderTheme(
                data: SliderTheme.of(context),
                child: Slider(
                  value: 20,
                  min: 0,
                  max: 250,
                  divisions: 50,
                  label: "1:00",
                  activeColor: Colors.orangeAccent,
                  onChanged: (val) {

                  },
                ),
              ),
            ],
          )
        ])
        /* bottomNavigationBar: Card(
          color: Colors.grey[50],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                iconSize: 90,
                icon: Icon(Icons.arrow_back),
                onPressed: () {},
              ),
              IconButton(
                iconSize: 90,
                icon: Icon(Icons.play_arrow),
                onPressed: () {},
              ),
              IconButton(
                iconSize: 90,
                icon: Icon(Icons.arrow_forward),
                onPressed: () {},
              ),
            ],
          ),
        )*/);
  }
}
