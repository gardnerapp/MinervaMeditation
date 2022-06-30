import 'package:flutter/material.dart';
import 'package:mindfullness/models/book_model.dart';

import 'chapter_card.dart';

class ShowBook extends StatelessWidget {
  final Book book;

  const ShowBook({Key key, this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.book.title),
      ),
      body: ListView(
          children: this.book.chapters.map((chapter) =>
              ChapterCard(chapter: chapter)).toList()
      ),
    );
  }
}
