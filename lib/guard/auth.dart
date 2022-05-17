import 'package:auto_route/auto_route.dart';

import '../notifier/auth.dart';
import '../router/router.dart';
import '../state/auth.dart';

class AuthGuard extends AutoRedirectGuard {
  final AuthNotifier auth;

  AuthGuard(this.auth) {
    auth.addListener((_) => reevaluate());
  }

  @override
  Future<bool> canNavigate(RouteMatch route) async {
    return auth.status() is Authenticated;
  }

  @override
  Future<void> onNavigation(
      NavigationResolver resolver, StackRouter router) async {
    if (await canNavigate(resolver.route)) {
      resolver.next();
    } else {
      redirect(const LoginRoute(), resolver: resolver);
    }
  }
}
