import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userProvider = StreamProvider((ref) async* {
  yield FirebaseAuth.instance.currentUser;
  yield* FirebaseAuth.instance.userChanges();
});
