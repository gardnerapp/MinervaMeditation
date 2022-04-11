class MeditationModel {
  String title;
  String meditation;

  MeditationModel({this.title, this.meditation});

  factory MeditationModel.fromJson(Map<String, dynamic> body) {
    return MeditationModel(
        title: body['title'], meditation: body['meditation']);
  }
}
