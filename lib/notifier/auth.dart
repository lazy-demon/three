import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthService extends StateNotifier<bool> {
  AuthService() : super(false);

  bool status() {
    print("status");
    return state;
  }

  void loginAndVerify() {
    print("loginAndVerify");
    state = true;
  }

  void logout() {
    print("logout");
    state = false;
  }
}
