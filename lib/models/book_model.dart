import 'chapter_model.dart';

class Book {
  final int id;
  final String title;
  final String author;
  final String img;
  final List<Chapter> chapters;

  Book({this.title, this.author, this.chapters, this.img, this.id});

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
        title: json['title'],
        id: json['id'],
        img: json['img'],
        author: json['author'],
        chapters: json['chapters'].map((e) => Chapter.fromJson(e)));
  }
}
