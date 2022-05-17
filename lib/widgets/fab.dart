import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../provider/auth.dart';

class FAB extends ConsumerWidget {
  const FAB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var list = {
      "login": () async {
        print("login");
        print(ref.watch(authProvider));
        ref.read(authProvider.notifier).signInAnonymously();
        print(ref.watch(authProvider));
      },
      "logout": () async {
        // Navigator.popUntil(context, ModalRoute.withName('/'));
        ref.read(authProvider.notifier).signOut();
      },
    };

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        for (var item in list.keys)
          FloatingActionButton(
            child: Text(item),
            onPressed: list[item],
            heroTag: null,
          ),
        FloatingActionButton(
          child: const Text("PUR"),
          onPressed: () => context.router.navigateNamed("/test-page"),
          heroTag: null,
        ),
      ],
    );
  }
}
