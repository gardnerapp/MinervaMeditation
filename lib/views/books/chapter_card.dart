import 'package:flutter/material.dart';
import 'package:mindfullness/models/chapter_model.dart';
import 'package:mindfullness/views/books/show_chapter.dart';

class ChapterCard extends StatelessWidget {
  final Chapter chapter;
  const ChapterCard({Key key, this.chapter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      padding: EdgeInsets.all(1),
      child: Card(
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        child: ListTile(
          leading: Icon(
            Icons.book,
            size: 60.0,
            color: Colors.orange,
          ),
          title: Text(
           this.chapter.title,
            style: TextStyle(fontSize: 22.0),
          ),
          onTap: () {
           Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) =>
                        ShowChapter(chapter: this.chapter)));
          },
        ),
      ),
    );
  }
}
