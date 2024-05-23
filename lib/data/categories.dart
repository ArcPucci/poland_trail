import 'package:trail_poland/data/data.dart';
import 'package:trail_poland/models/models.dart';

final List<Category> categories = [
  Category(
    id: 0,
    title: 'Activities',
    icon: 'assets/images/categories/activities.png',
    places: activitiesPlaces,
  ),
  Category(
    id: 1,
    title: 'Leisure',
    icon: 'assets/images/categories/leisure.png',
    places: leisurePlaces,
  ),
  Category(
    id: 2,
    title: 'Food',
    icon: 'assets/images/categories/food.png',
    places: foodPlaces,
  ),
  Category(
    id: 3,
    title: 'Places',
    icon: 'assets/images/categories/places.png',
    places: naturePlaces,
  ),
  Category(
    id: 4,
    title: 'Sleep',
    icon: 'assets/images/categories/sleep.png',
    places: sleepPlaces,
  ),
];
