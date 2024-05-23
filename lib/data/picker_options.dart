import 'package:trail_poland/data/data.dart';
import 'package:trail_poland/models/models.dart';

final List<PickerOption> pickerOptions = [
  PickerOption(
    id: 0,
    text: 'Where to go',
    image: 'assets/images/picker_options/where_to_go.png',
    places: leisurePlaces,
  ),
  PickerOption(
    id: 1,
    text: 'What to do',
    image: 'assets/images/picker_options/what_to_do.png',
    places: activitiesPlaces,
  ),
  PickerOption(
    id: 2,
    text: 'Where to eat',
    image: 'assets/images/picker_options/where_to_eat.png',
    places: foodPlaces,
  ),
  PickerOption(
    id: 3,
    text: 'Where to sleep',
    image: 'assets/images/picker_options/where_to_sleep.png',
    places: sleepPlaces,
  ),
  PickerOption(
    id: 4,
    text: 'Cool places',
    image: 'assets/images/picker_options/cool_places.png',
    places: naturePlaces,
  ),
  PickerOption(
    id: 5,
    text: 'Discover all',
    image: 'assets/images/picker_options/discover_all.png',
    places: [
      ...activitiesPlaces,
      ...leisurePlaces,
      ...foodPlaces,
      ...naturePlaces,
      ...sleepPlaces,
    ],
  ),
];
