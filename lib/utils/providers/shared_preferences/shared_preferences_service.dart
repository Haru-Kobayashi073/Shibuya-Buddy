import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'shared_preferences_service.g.dart';

final sharedPreferencesProvider = Provider<SharedPreferences>(
  (_) => throw UnimplementedError(),
);

@riverpod
class SharedPreferencesService extends _$SharedPreferencesService {
  @override
  String build() {
    return '';
  }

  Future<void> setStringValue({
    required String key,
    required String value,
  }) async {
    await ref.read(sharedPreferencesProvider).setString(key, value);
  }

  String getStringValue({required String key}) {
    final value = ref.read(sharedPreferencesProvider).getString(key);
    return value ?? '';
  }

  Future<void> removeValue({required String key}) async {
    await ref.read(sharedPreferencesProvider).remove(key);
  }
}
