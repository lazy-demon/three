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
        ref.read(authProvider.notifier).signInAnonymously();
      },
      "logout": () async {
        ref.read(authProvider.notifier).signOut();
      },
    };

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        for (var item in list.keys)
          FloatingActionButton(
            onPressed: list[item],
            heroTag: item,
            child: Text(item),
          ),
      ],
    );
  }
}
