import 'chapter_model.dart';

class Book {
  final int id;
  final String title;
  final String img;
  final List<Chapter> chapters;

  Book({this.title, this.chapters, this.img, this.id});

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
        title: json['title'],
        id: json['id'],
        img: json['img'],
        chapters: json['chapters'].map((e) => Chapter.fromJson(e)));
  }
}
