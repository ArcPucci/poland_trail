import 'package:trail_poland/models/models.dart';

class Category {
  final int id;
  final String title;
  final String icon;
  final List<Place> places;

  const Category({
    required this.id,
    required this.title,
    required this.icon,
    required this.places,
  });
}
