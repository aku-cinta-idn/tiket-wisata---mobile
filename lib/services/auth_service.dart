import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  static const _defaultEmail = 'admin@example.com';
  static const _defaultPassword = 'admin123';
  static const _defaultName = 'Administrator';

  static Future<void> _initDefaultUser() async {
    final prefs = await SharedPreferences.getInstance();

    // Cek apakah data sudah pernah disimpan sebelumnya
    if (!prefs.containsKey('email')) {
      await prefs.setString('email', _defaultEmail);
      await prefs.setString('password', _defaultPassword);
      await prefs.setString('name', _defaultName);
    }
  }

  static Future<bool> login(String email, String password) async {
    await _initDefaultUser(); // inisialisasi jika belum ada
    final prefs = await SharedPreferences.getInstance();
    final storedEmail = prefs.getString('email');
    final storedPassword = prefs.getString('password');

    return email == storedEmail && password == storedPassword;
  }

  static Future<bool> register(
      String email, String password, String name) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('email', email);
    await prefs.setString('password', password);
    await prefs.setString('name', name);
    return true;
  }

  static Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }

  static Future<bool> isLoggedIn() async {
    await _initDefaultUser(); // inisialisasi default user
    final prefs = await SharedPreferences.getInstance();
    return prefs.containsKey('email');
  }

  static Future<String?> getName() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('name');
  }
}
