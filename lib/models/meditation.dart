class Meditation {
  final String title;
  final String subtitle;
  final String meditation;

  Meditation({this.title, this.subtitle, this.meditation});

  factory Meditation.fromJson(Map<String, dynamic> body) {
    return Meditation(
        title: body['title'],
        subtitle: body['subtitle'],
        meditation: body['meditation']);
  }
}
