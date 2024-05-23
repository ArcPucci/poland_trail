import 'package:flutter/cupertino.dart';
import 'package:trail_poland/data/data.dart';
import 'package:trail_poland/data/picker_options.dart';
import 'package:trail_poland/models/models.dart';
import 'package:trail_poland/services/services.dart';

class PlaceProvider extends ChangeNotifier {
  final PreferencesService _service;

  PlaceProvider({
    required PreferencesService service,
  }) : _service = service;

  Category _category = categories[0];

  Category get category => _category;

  Place _place = categories[0].places.first;

  Place get place => _place;

  PickerOption _pickerOption = pickerOptions[0];

  PickerOption get pickerOption => _pickerOption;

  final List<Place> _allPlaces = [
    ...activitiesPlaces,
    ...leisurePlaces,
    ...foodPlaces,
    ...naturePlaces,
    ...sleepPlaces,
    ...routes,
  ];

  List<Place> get favoritePlaces => _favoritePlaces;

  List<Place> _favoritePlaces = [];

  List<int> _favorites = [];

  List<int> get favorites => _favorites;

  List<Place> _places = categories[0].places;

  List<Place> get places => _places;

  List<Place> _randomPlaces = [];

  List<Place> get randomPlaces => _randomPlaces;

  List<Place> _routes = routes;

  List<Place> get subRoutes => _routes;

  bool get premium => _service.getPremium();

  void init() {
    _favorites = _service.getFavorites();
    _places = categories[0].places;
    _routes = routes;
    _favoritePlaces = _allPlaces
        .where(
          (element) => _favorites.contains(element.id),
        )
        .toList();
    notifyListeners();
  }

  void selectCategory(Category category) {
    _category = category;
    _places = category.places;
    notifyListeners();
  }

  void selectPlace(Place place) {
    _place = place;
    notifyListeners();
  }

  void onLike(Place place) async {
    if (_favorites.contains(place.id)) {
      _favorites.remove(place.id);
    } else {
      _favorites.add(place.id);
    }
    _favoritePlaces = _allPlaces
        .where(
          (element) => _favorites.contains(element.id),
        )
        .toList();
    await _service.setFavorites(_favorites);
    notifyListeners();
  }

  void selectPickerOption(PickerOption pickerOption) {
    _pickerOption = pickerOption;
    notifyListeners();
  }

  void randomizePlaces(int count) {
    final temp = _pickerOption.places;
    temp.shuffle();

    _randomPlaces = temp.take(count).toList();
    notifyListeners();
  }

  void onSearch(String query) {
    String value = query.trim().toLowerCase();
    if (value.isEmpty) {
      _favoritePlaces = _allPlaces
          .where(
            (element) => _favorites.contains(element.id),
          )
          .toList();
      _routes = routes;
      _places = _category.places;
      notifyListeners();
      return;
    }

    _favoritePlaces = _allPlaces
        .where(
          (element) =>
              _favorites.contains(element.id) &&
              element.title.toLowerCase().contains(value),
        )
        .toList();

    _routes = routes
        .where((element) => element.title.toLowerCase().contains(value))
        .toList();

    _places = _allPlaces
        .where((element) =>
            element.title.toLowerCase().contains(query.toLowerCase()))
        .toList();

    notifyListeners();
  }

  void buyPremium() async {
    await _service.setPremium();
    notifyListeners();
  }
}
