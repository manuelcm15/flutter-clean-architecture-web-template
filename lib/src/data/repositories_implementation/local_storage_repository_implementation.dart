import 'package:shared_preferences/shared_preferences.dart';
import 'package:web_template/src/data/local/local_storage_api.dart';
import 'package:web_template/src/domain/repositories/local_storage_repository.dart';


class LocalStorageRepositoryImplementation extends LocalStorageRepository{
  final LocalStorageAPI _localStorageAPI;

  LocalStorageRepositoryImplementation(this._localStorageAPI);

  @override
  Future<bool> contains(String key) {
   return _localStorageAPI.contains(key);
  }

  @override
  Future<Object?> get(String key) {
    return _localStorageAPI.get(key);
  }

  @override
  Future<bool?> getBool(String key) {
    return _localStorageAPI.getBool(key);
  }

  @override
  Future<double?> getDouble(String key) {
    return _localStorageAPI.getDouble(key);
  }

  @override
  Future<SharedPreferences> getInstance() {
    return _localStorageAPI.getInstance();
  }

  @override
  Future<int?> getInt(String key) {
    return _localStorageAPI.getInt(key);
  }

  @override
  Future<Set<String>> getKeys() {
    return _localStorageAPI.getKeys();
  }

  @override
  Future<String?> getString(String key) {
    return _localStorageAPI.getString(key);
  }

  @override
  Future<List?> getStringList(String key) {
    return _localStorageAPI.getStringList(key);
  }

  @override
  Future<String?> read(String key) {
    return _localStorageAPI.read(key);
  }

  @override
  Future<bool> remove(String key) {
    return _localStorageAPI.remove(key);
  }

  @override
  Future<bool> setBool(String key, bool value) {
    return _localStorageAPI.setBool(key, value);
  }

  @override
  Future<bool> setDouble(String key, double value) {
    return _localStorageAPI.setDouble(key, value);
  }

  @override
  Future<bool> setInt(String key, int value) {
    return _localStorageAPI.setInt(key, value);
  }

  @override
  Future<bool> setString(String key, String value) {
    return _localStorageAPI.setString(key, value);
  }

  @override
  Future<bool> setStringList(String key, List<String> value) {
    return _localStorageAPI.setStringList(key, value);
  }
}
