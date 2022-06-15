import 'package:flutter/material.dart';
import 'package:mindfullness/books/books_main.dart';
import 'package:mindfullness/meditations/meditation_main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Minerva',
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
          splashColor: Colors.orange,
          appBarTheme: AppBarTheme(elevation: 16.0),
          cardTheme: CardTheme(elevation: 20.0, shadowColor: Colors.deepOrange),
          sliderTheme: SliderThemeData(
            activeTrackColor: Colors.deepOrangeAccent,
            inactiveTrackColor: Colors.grey,
            trackHeight: 3.0,
            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
            overlayShape: RoundSliderOverlayShape(overlayRadius: 28.0),
          ),
        ),
        home: Home());
  }
}

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Minerva", style: TextStyle(fontSize: 25)),
          bottom: TabBar(
            labelStyle: TextStyle(fontSize: 20),
            tabs: [
              Tab(text: "Monastery", icon: Icon(Icons.spa, size: 35.0,)),
              Tab(text: "Library", icon: Icon(Icons.local_library, size: 35.0,))
            ],
          ),
        ),
        body: TabBarView(
            children: [MeditationMain(), BooksMain()]),
      ),
    );
  }
}
