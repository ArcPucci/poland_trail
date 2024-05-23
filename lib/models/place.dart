class Place {
  final int id;
  final String title;
  final String? title2;
  final String image;
  final String bigImage;
  final String content;
  final int reviews;
  final double rate;

  const Place({
    required this.id,
    required this.title,
    this.title2,
    required this.image,
    required this.bigImage,
    required this.content,
    required this.reviews,
    required this.rate,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Place &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          title == other.title &&
          title2 == other.title2 &&
          image == other.image &&
          bigImage == other.bigImage &&
          content == other.content &&
          reviews == other.reviews &&
          rate == other.rate;

  @override
  int get hashCode =>
      id.hashCode ^
      title.hashCode ^
      title2.hashCode ^
      image.hashCode ^
      bigImage.hashCode ^
      content.hashCode ^
      reviews.hashCode ^
      rate.hashCode;
}