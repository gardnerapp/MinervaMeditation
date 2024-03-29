import 'package:flutter/material.dart';
import 'index_meditation.dart';


class MeditationMain extends StatelessWidget {
  const MeditationMain({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
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
                ),),
            )
          ],
        ),
        Center(
            child: IndexMeditation())
      ],
    );
  }




}
