import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../notifier/auth.dart';
import '../state/auth.dart';

final authProvider = StateNotifierProvider<AuthNotifier, AuthState>(
  (ref) => AuthNotifier(ref),
);
