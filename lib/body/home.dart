import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:three/provider/auth.dart';

import '../scaffolding.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffolding(
        body: TextButton(
            onPressed: (() => ref.read(authProvider.notifier).signOut()),
            child: const Text("logout")));
  }
}
