class Drill {
  final String titleEn;
  final String titleFil;
  final String category;
  final int duration;

  Drill({
    required this.titleEn,
    required this.titleFil,
    required this.category,
    required this.duration,
  });

  String getTitle(String lang) => lang == 'fil' ? titleFil : titleEn;
}
