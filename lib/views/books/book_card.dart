import 'package:flutter/material.dart';
import 'package:mindfullness/models/book_model.dart';
import 'package:mindfullness/views/books/show_book.dart';

class BookCard extends StatelessWidget {
  final Book book;

  const BookCard({Key key, this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 16.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        child: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) =>
                        ShowBook(book: this.book)));
          },
          child: Container(
            height: 350.0,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 200.0,
                  width: 300.0,
                  child: Image(
                      fit: BoxFit.scaleDown,
                      image: NetworkImage(this.book.img)),
                ),
                ListTile(
                  title: Text(this.book.title,
                      style: TextStyle(fontSize: 35.0),
                      textAlign: TextAlign.center),
                  subtitle: Text(this.book.author,
                      style: TextStyle(fontSize: 25.0),
                      textAlign: TextAlign.center),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}