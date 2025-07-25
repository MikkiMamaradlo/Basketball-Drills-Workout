class Drill {
  final String titleEn;
  final String titleFil;
  final String category;
  final int duration; // in seconds

  Drill({
    required this.titleEn,
    required this.titleFil,
    required this.category,
    required this.duration,
  });

  String getTitle(String language) {
    return language == 'fil' ? titleFil : titleEn;
  }
}
