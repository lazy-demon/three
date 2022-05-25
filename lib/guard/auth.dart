import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:three/provider/auth.dart';

import '../notifier/auth.dart';
import '../router/router.dart';
import '../state/auth.dart';

class AuthGuard extends AutoRedirectGuard {
  final WidgetRef auth;

  AuthGuard(this.auth) {
    print("construct");
    auth.listen(authProvider, (previous, next) {
      print("listen");
      if (previous != next && next is Authenticated) {
        print("reevaluate");
        reevaluate();
      }
    });
  }

  @override
  Future<bool> canNavigate(RouteMatch route) async {
    return true;
  }

  @override
  Future<void> onNavigation(
      NavigationResolver resolver, StackRouter router) async {
    print("onNavigation");
    var test = auth.read(authProvider);
    if (test is Authenticated) {
      resolver.next();
    } else {
      redirect(const LoginRoute(), resolver: resolver);
    }
  }
}
