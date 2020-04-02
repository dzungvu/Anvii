import 'package:shared_preferences/shared_preferences.dart';

class MySharePreference {
  final String _DISPLAY_NAME = 'displayName';
  final String _EMAIL = 'userEmail';
  final String _AVATAR_URL = 'avatarUrl';

  static MySharePreference _sharePreferences;
  Future<SharedPreferences> _prefs;

  MySharePreference._() {
    _prefs = SharedPreferences.getInstance();
  }

  static MySharePreference getInstance() {
    if (_sharePreferences == null) {
      _sharePreferences = MySharePreference._();
    }
    return _sharePreferences;
  }

  void setUserDisplayName(String displayName) async {
    (await _prefs).setString(_DISPLAY_NAME, displayName);
  }

  void setEmail(String email) async {
    (await _prefs).setString(_EMAIL, email);
  }

  void setAvatarUrl(String avatarUrl) async {
    (await _prefs).setString(_DISPLAY_NAME, avatarUrl);
  }

  Future<String> getUserDisplayName() async {
    return (await _prefs).getString(_DISPLAY_NAME);
  }

  Future<String> getUserEmail() async {
    return (await _prefs).getString(_EMAIL);
  }

  Future<String> getAvatarUrl() async {
    return (await _prefs).getString(_AVATAR_URL);
  }
}
