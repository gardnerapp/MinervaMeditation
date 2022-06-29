import 'package:flutter/material.dart';
import 'package:mindfullness/models/book_model.dart';

class ShowBook extends StatelessWidget {
  // TODO render list view of chapters
  final Book book;
  const ShowBook({Key key, this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Hello World"),
    );
  }
}
