import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../object/ddoptions.dart';

class Menu extends ConsumerWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var list = [
      // DDOptions(
      //   title: "Profile",
      //   route: ('/profile'),
      // ),
      // DDOptions(
      //   title: 'Settings',
      //   route: ('/settings'),
      // ),
      // DDOptions(
      //   title: 'Info',
      //   route: ('/info'),
      // ),
      // DDOptions(
      //   title: 'Rooms',
      //   route: ('/rooms'),
      // ),
      DDOptions(
        title: 'Users',
        route: ('/users'),
      ),
      DDOptions(
        title: 'Login',
        route: ('/login'),
      ),
    ];

    return PopupMenuButton(
      onSelected: (route) => Navigator.pushNamed(context, route as String),
      itemBuilder: (_) => <PopupMenuEntry>[
        for (var item in list)
          PopupMenuItem(
            value: item.route,
            child: ListTile(
              trailing: const Icon(Icons.account_box),
              title: Text(item.title),
            ),
          ),
      ],
    );
  }
}

// onSelected: (route) => Navigator.push(
//         context,
//         PageRouteBuilder(
//           pageBuilder: (c, a1, a2) => Scaffolding(body: UsersPage()),
//           transitionsBuilder: (c, anim, a2, child) =>
//               SizeTransition(sizeFactor: anim, child: child),
//         ),
//       ),