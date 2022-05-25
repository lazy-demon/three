import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../provider/auth.dart';
import '../router/router.dart';

class FAB extends ConsumerWidget {
  const FAB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var list = {
      "login": () async {
        await ref.read(authProvider.notifier).signInAnonymously();
      },
      "logout": () async {
        await ref.read(authProvider.notifier).signOut();
        context.router.replace(const LoginRoute());
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
