import 'package:flutter/material.dart';
import 'package:mindfullness/shared/infographic.dart';

import 'book_card.dart';

class BooksMain extends StatelessWidget {
  const BooksMain({Key key}) : super(key: key);

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
                      image: AssetImage('lib/assets/img/library.jpg'),
                      fit: BoxFit.cover),
                ),),
            ),
          ],
        ),
           GridView.count(
          crossAxisCount: 2,
          childAspectRatio: .75,
          children: [
            BookCard(
              title: "Marcus Aurelius's Meditations",
              asset: "lib/assets/img/marcus_aurelius.jpg",
              onTap: () {},
            ),
            BookCard(
              title: "Lao Tzu's Tao Te Ching",
              asset: "lib/assets/img/lao_tzu.jpg",
              onTap: () {},
            ),
          ],
        ),
        InfoGraphic(msg: "Coming Soon !"),
      ],
    );
  }
}
