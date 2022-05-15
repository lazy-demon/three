import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class HomePage extends StatelessWidget {
  final VoidCallback? navigate, showUserPosts;
  const HomePage({
    Key? key,
    this.navigate,
    this.showUserPosts,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AutoLeadingButton(),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'HomePage',
              style: TextStyle(fontSize: 30),
            ),
            ElevatedButton(
              onPressed: navigate ??
                  () {
                    final authService = App.of(context).authService;
                    authService.logout();
                    context.router.popUntilRoot();
                  },
              child: const Text('logout'),
            ),
          ],
        ),
      ),
    );
  }
}
