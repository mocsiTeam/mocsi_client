import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class StorageInjectableModule {
  @lazySingleton
  final FlutterSecureStorage storage = const FlutterSecureStorage();
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
}
