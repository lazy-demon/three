import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:three/provider/auth.dart';
import '../scaffolding.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TextEditingController passwordController =
        TextEditingController(text: 'qwerty');
    final TextEditingController username =
        TextEditingController(text: 'jd@gmail.com');

    void _login() async {
      ref.read(authProvider.notifier).signInAnonymously();
      // try {
      //   var userd = await FirebaseAuth.instance.signInWithEmailAndPassword(
      //     email: username.text,
      //     password: passwordController.text,
      //   );
      //   // print(userd.user);
      //   // context.router.replaceNamed("/");
      // } catch (e) {
      //   await showDialog(
      //     context: context,
      //     builder: (context) => AlertDialog(
      //       actions: [
      //         TextButton(
      //           onPressed: () {
      //             Navigator.of(context).pop();
      //           },
      //           child: const Text('OK'),
      //         ),
      //       ],
      //       content: Text(
      //         e.toString(),
      //       ),
      //       title: const Text('Error'),
      //     ),
      //   );
      // }
    }

    return Scaffolding(
        body: SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.only(top: 80, left: 24, right: 24),
        child: Column(
          children: [
            TextField(
              autocorrect: false,
              // autofillHints: _loggingIn ? null : [AutofillHints.email],
              autofocus: true,
              controller: username,
              decoration: InputDecoration(
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                labelText: 'Email',
                suffixIcon: IconButton(
                  icon: const Icon(Icons.cancel),
                  onPressed: () => username.clear(),
                ),
              ),
              keyboardType: TextInputType.emailAddress,
              // readOnly: _loggingIn,
              textCapitalization: TextCapitalization.none,
              textInputAction: TextInputAction.next,
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: TextField(
                autocorrect: false,
                // autofillHints: _loggingIn ? null : [AutofillHints.password],
                controller: passwordController,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  labelText: 'Password',
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.cancel),
                    onPressed: () => passwordController.clear(),
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
                obscureText: true,
                onEditingComplete: _login,
                textCapitalization: TextCapitalization.none,
                textInputAction: TextInputAction.done,
              ),
            ),
            TextButton(
              onPressed:
                  // _loggingIn ? null :
                  _login,
              child: const Text('Login'),
            ),
            TextButton(
              onPressed:
                  // _loggingIn ? null :
                  () {
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (context) => Scaffolding(body: RegisterPage()),
                //   ),
                // );
              },
              child: const Text('Register'),
            ),
          ],
        ),
      ),
    ));
  }
}
