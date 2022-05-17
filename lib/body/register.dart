// import 'package:faker/faker.dart';
// import 'package:firepod_reborn/logic/provider/auth.dart';
// import 'package:firepod_reborn/logic/provider/user.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// class RegisterPage extends ConsumerWidget {
//   RegisterPage({Key? key}) : super(key: key);

//   final bool _registering = false;
//   final TextEditingController? _firstnameController =
//       TextEditingController(text: faker.person.firstName());
//   final TextEditingController? _lastnameController =
//       TextEditingController(text: faker.person.lastName());
//   final TextEditingController? _passwordController =
//       TextEditingController(text: "qwerty");
//   final TextEditingController? _usernameController =
//       TextEditingController(text: "@gmail.com");

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final auth = ref.watch(authProvider.notifier);
//     final user = ref.watch(userProvider);

//     void _register() async {
//       // FocusScope.of(context).unfocus();
//       try {
//         Navigator.of(context).pop();
//         await auth.createUser(
//           _usernameController!.text,
//           _firstnameController!.text,
//           _lastnameController!.text,
//           _passwordController!.text,
//         );
//       } catch (e) {
//         await showDialog(
//           context: context,
//           builder: (context) => AlertDialog(
//             actions: [
//               TextButton(
//                 onPressed: () {
//                   Navigator.of(context).pop();
//                 },
//                 child: const Text('OK'),
//               ),
//             ],
//             content: Text(
//               "registerdialog: " +
//                   e.toString() +
//                   user.toString() +
//                   auth.toString(),
//             ),
//             title: const Text('Error'),
//           ),
//         );
//       }
//     }

//     return SingleChildScrollView(
//       child: Container(
//         padding: const EdgeInsets.only(top: 80, left: 24, right: 24),
//         child: Column(
//           children: [
//             TextField(
//               autocorrect: false,
//               autofillHints: _registering ? null : [AutofillHints.name],
//               controller: _firstnameController,
//               decoration: InputDecoration(
//                 border: const OutlineInputBorder(
//                   borderRadius: BorderRadius.all(
//                     Radius.circular(8),
//                   ),
//                 ),
//                 labelText: 'First name',
//                 suffixIcon: IconButton(
//                   icon: const Icon(Icons.cancel),
//                   onPressed: () => _firstnameController?.clear(),
//                 ),
//               ),
//               // focusNode: _focusNode,
//               keyboardType: TextInputType.name,
//               onEditingComplete: _register,
//               textCapitalization: TextCapitalization.none,
//               textInputAction: TextInputAction.done,
//             ),
//             Container(
//               margin: const EdgeInsets.symmetric(vertical: 8),
//               child: TextField(
//                 autocorrect: false,
//                 autofillHints: _registering ? null : [AutofillHints.name],
//                 controller: _lastnameController,
//                 decoration: InputDecoration(
//                   border: const OutlineInputBorder(
//                     borderRadius: BorderRadius.all(
//                       Radius.circular(8),
//                     ),
//                   ),
//                   labelText: 'Last name',
//                   suffixIcon: IconButton(
//                     icon: const Icon(Icons.cancel),
//                     onPressed: () => _lastnameController?.clear(),
//                   ),
//                 ),
//                 // focusNode: _focusNode,
//                 keyboardType: TextInputType.name,
//                 onEditingComplete: _register,
//                 textCapitalization: TextCapitalization.none,
//                 textInputAction: TextInputAction.done,
//               ),
//             ),
//             Container(
//               margin: const EdgeInsets.symmetric(vertical: 8),
//               child: TextField(
//                 autocorrect: false,
//                 autofillHints: _registering ? null : [AutofillHints.email],
//                 autofocus: true,
//                 controller: _usernameController,
//                 decoration: InputDecoration(
//                   border: const OutlineInputBorder(
//                     borderRadius: BorderRadius.all(
//                       Radius.circular(8),
//                     ),
//                   ),
//                   labelText: 'Email',
//                   suffixIcon: IconButton(
//                     icon: const Icon(Icons.cancel),
//                     onPressed: () => _usernameController?.clear(),
//                   ),
//                 ),
//                 keyboardType: TextInputType.emailAddress,
//                 readOnly: _registering,
//                 textCapitalization: TextCapitalization.none,
//                 textInputAction: TextInputAction.next,
//               ),
//             ),
//             Container(
//               margin: const EdgeInsets.symmetric(vertical: 8),
//               child: TextField(
//                 autocorrect: false,
//                 autofillHints: _registering ? null : [AutofillHints.password],
//                 controller: _passwordController,
//                 decoration: InputDecoration(
//                   border: const OutlineInputBorder(
//                     borderRadius: BorderRadius.all(
//                       Radius.circular(8),
//                     ),
//                   ),
//                   labelText: 'Password',
//                   suffixIcon: IconButton(
//                     icon: const Icon(Icons.cancel),
//                     onPressed: () => _passwordController?.clear(),
//                   ),
//                 ),
//                 keyboardType: TextInputType.emailAddress,
//                 obscureText: true,
//                 onEditingComplete: _register,
//                 textCapitalization: TextCapitalization.none,
//                 textInputAction: TextInputAction.done,
//               ),
//             ),
//             TextButton(
//               onPressed: _registering ? null : _register,
//               child: const Text('Register'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
