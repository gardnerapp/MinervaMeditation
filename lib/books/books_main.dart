import 'package:flutter/material.dart';
import 'package:mindfullness/books/book_card.dart';

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
       Container(margin: EdgeInsets.only(top: 50.0),
        child:  GridView.count(
          crossAxisCount: 2,
          childAspectRatio: .75,
          children: [
            BookCard(
              title: "Bjj Meditation",
              asset: "lib/assets/img/example_yoga.jpg",
              onTap: () {},
            ),
            BookCard(
              title: "Bjj Meditation",
              asset: "lib/assets/img/example_yoga.jpg",
              onTap: () {},
            ),
            BookCard(
              title: "Bjj Meditation",
              asset: "lib/assets/img/example_yoga.jpg",
              onTap: () {},
            ),
            BookCard(
              title: "Bjj Meditation",
              asset: "lib/assets/img/example_yoga.jpg",
              onTap: () {},
            ),
          ],
        ),
        )
      ],
    );
  }
}