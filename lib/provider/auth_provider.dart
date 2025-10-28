import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';


class AuthProvider extends ChangeNotifier {
  final SupabaseClient _supabase = Supabase.instance.client;

  bool _loading = false;
  bool get loading => _loading;

  Future<bool> login(String email, String password) async {
    _loading = true;
    notifyListeners();

    try {
      final response = await _supabase.auth.signInWithPassword(
        email: email,
        password: password
      );
      _loading = false;
      notifyListeners();
      return response.user !=null;
    } catch (e) {
      _loading = false;
      notifyListeners();
      debugPrint('Error en el login: $e');
      return false;
    }
  }
  Future<void> logout() async {
    await _supabase.auth.signOut();
  }
  bool get isLoggedIn => _supabase.auth.currentUser != null;
}