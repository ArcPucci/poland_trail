import 'package:trail_poland/models/models.dart';

class PickerOption {
  final int id;
  final String text;
  final String image;
  final List<Place> places;

  const PickerOption({
    required this.id,
    required this.text,
    required this.image,
    required this.places,
  });
}