import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../guard/auth.dart';
import '../scaffold/home.dart';
import '../scaffold/login.dart';

part 'router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true, guards: [AuthGuard]),
    AutoRoute(page: LoginPage),
  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter {
  AppRouter({required AuthGuard authGuard}) : super(authGuard: authGuard);
}
