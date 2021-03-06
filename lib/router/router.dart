import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:three/body/chat.dart';
import 'package:three/body/register.dart';

import '../body/home.dart';
import '../body/login.dart';
import '../body/users.dart';
import '../guard/auth.dart';

part 'router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true, guards: [AuthGuard]),
    AutoRoute(page: LoginPage),
    AutoRoute(page: UsersPage),
    AutoRoute(page: RegisterPage),
    AutoRoute(page: ChatPage)
  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter {
  AppRouter({required AuthGuard authGuard}) : super(authGuard: authGuard);
}
