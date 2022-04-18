class Meditation {
  final String title;
  final String subtitle;
  final String track;

  Meditation({this.title, this.subtitle, this.track});

  factory Meditation.fromJson(Map<String, dynamic> body) {
    return Meditation(
        title: body['title'],
        subtitle: body['subtitle'],
        track: body['track']);
  }
}
