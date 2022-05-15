import 'package:flutter/material.dart';

import '../main.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login to continue'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                App.of(context).authService.isAuthenticated = true;
              },
              child: const Text('Login'),
            ),
            ElevatedButton(
              onPressed: () {
                App.of(context).authService.isVerified = true;
              },
              child: const Text('Verify'),
            ),
            ElevatedButton(
              onPressed: () {
                final authService = App.of(context).authService;
                authService.loginAndVerify();
              },
              child: const Text('Login & Verify'),
            ),
          ],
        ),
      ),
    );
  }
}
