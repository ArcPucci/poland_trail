import 'package:shared_preferences/shared_preferences.dart';

class PreferencesService {
  final SharedPreferences _preferences;

  PreferencesService({
    required SharedPreferences preferences,
  }) : _preferences = preferences;

  static const premiumKey = 'PREMIUM';
  static const linkKey = 'LINK';
  static const firstInitKey = 'FIRST_INIT';
  static const favoritesKey = 'FAVORITES';

  Future<void> setPremium() async {
    await _preferences.setBool(premiumKey, true);
  }

  bool getPremium() {
    return _preferences.getBool(premiumKey) ?? false;
  }

  Future<void> setFirstInit() async {
    await _preferences.setBool(firstInitKey, false);
  }

  bool getFirstInit() {
    return _preferences.getBool(firstInitKey) ?? true;
  }

  Future<void> setLink(String link) async {
    await _preferences.setString(linkKey, link);
  }

  String? getLink() {
    return _preferences.getString(linkKey);
  }

  Future<void> setFavorites(List<int> favorites) async {
    final map = favorites.map((e) => e.toString()).toList();
    await _preferences.setStringList(favoritesKey, map);
  }

  List<int> getFavorites() {
    final map = _preferences.getStringList(favoritesKey) ?? [];
    if(map.isEmpty) return [];
    final data = map.map((e) => int.parse(e)).toList();
    return data;
  }

}
