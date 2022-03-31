import 'package:flutter/material.dart';
import 'package:mindfullness/audio_card.dart';

import 'meditation.dart';


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
            child: ListView.separated(
                itemBuilder: (BuildContext context, int indx) {
                  return AudioCard(
                    title: "Mindfulness Meditation",
                    subtitle: "Unlock Your Full Potential",
                    pushDestination: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => Meditation(
                                title: "Flowing Mind",
                              )));
                    },
                  );
                },
                separatorBuilder: (BuildContext context, int indx) {
                  return SizedBox(height: 40);
                },
                itemCount: 15))
      ],
    );
  }




}
