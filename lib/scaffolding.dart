import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'provider/auth.dart';
import 'state/auth.dart';
import 'widgets/drawer.dart';
import 'widgets/fab.dart';
import 'widgets/menu.dart';

class Scaffolding extends ConsumerWidget {
  const Scaffolding({Key? key, required this.body}) : super(key: key);

  final Widget body;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AuthState authState = ref.watch(authProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(authState.toString()),
        actions: const [Menu()],
      ),
      drawer: (authState is Authenticated) ? const NavigationDrawer() : null,
      body: (authState is Loading)
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : body,
      floatingActionButton: const FAB(),
    );
  }
}
