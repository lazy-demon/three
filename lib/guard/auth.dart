import 'package:auto_route/auto_route.dart';

import '../main.dart';
import '../router/router.dart';

class AuthGuard extends AutoRedirectGuard {
  final AuthService authService;

  AuthGuard(this.authService) {
    authService.addListener(reevaluate);
  }

  @override
  Future<bool> canNavigate(RouteMatch route) async {
    return authService.isAuthenticated && authService.isVerified;
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
