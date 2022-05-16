import 'package:auto_route/auto_route.dart';

import '../notifier/auth.dart';
import '../router/router.dart';

class AuthGuard extends AutoRedirectGuard {
  final AuthService authService;

  AuthGuard(this.authService) {
    // authService.addListener(reevaluate);
    notifyListeners();
  }

  @override
  Future<bool> canNavigate(RouteMatch route) async {
    print("canNavigate");
    return authService.status();
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
