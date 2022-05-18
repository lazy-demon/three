import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:firebase_auth/firebase_auth.dart';

import '../provider/user.dart';
import '../state/auth.dart';

class AuthNotifier extends StateNotifier<AuthState> {
  AuthNotifier(Ref ref)
      : super((ref.watch(userProvider).value == null)
            ? AuthState.unauthenticated(ref.read(userProvider).value.toString())
            : AuthState.authenticated(ref.read(userProvider).value.toString()));

  Future<void> signInAnonymously() async {
    state = AuthState.loading("sign in");
    try {
      await FirebaseAuth.instance.signInAnonymously();
    } on FirebaseAuthException catch (e) {
      state = AuthState.error(e.code);
      if (kDebugMode) {
        print(e.message);
      }
    }
  }

  Future<void> signOut() async {
    state = AuthState.loading("sign out");
    try {
      await FirebaseAuth.instance.signOut();
    } on FirebaseAuthException catch (e) {
      state = AuthState.error(e.code);
    }
  }

  AuthState status() {
    return state;
  }
}
