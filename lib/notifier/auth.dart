import 'package:flutter/material.dart';

class AuthService extends ChangeNotifier {
  bool _isAuthenticated = false;

  bool get isAuthenticated => _isAuthenticated;

  bool _isVerified = false;

  bool get isVerified => _isVerified;

  set isVerified(bool value) {
    _isVerified = value;
    notifyListeners();
  }

  set isAuthenticated(bool value) {
    _isAuthenticated = value;
    notifyListeners();
  }

  void loginAndVerify() {
    _isAuthenticated = true;
    _isVerified = true;
    notifyListeners();
  }

  void logout() {
    _isAuthenticated = false;
    _isVerified = false;
    notifyListeners();
  }
}
