class Meditation{
  String title;
  String meditation;

  Meditation({this.title, this.meditation});

  Meditation.fromJson(Map<String,dynamic> body){
    Meditation(
      title: body['title'],
      meditation: body['meditation']
    );
  }

}