import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:three/guard/auth.dart';

import 'router/router.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  AppState createState() => AppState();

  static AppState of(BuildContext context) {
    return context.findAncestorStateOfType<AppState>()!;
  }
}

class AppState extends State<App> {
  late final authService = AuthService()
    ..addListener(() {
      setState(() {});
    });

  late final _appRouter = AppRouter(authGuard: AuthGuard(authService));

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      routeInformationProvider: _appRouter.routeInfoProvider(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(
          // initialDeepLink: '/user/1/posts/favorite',
          // onNavigate: (urlState){
          //   print(urlState.path);
          //   setState(() {
          //     urlRoutes = urlState.segments.map((e) => e.toPageRouteInfo()).toList();
          //   });
          // },
          // routes: (handler) {
          //   print(handler.peek?.map((e) => e.routeName));
          //   if (!authService.isAuthenticated) return [LoginRoute()];
          //   return handler.initialPendingRoutes ?? [HomeRouter()];
          // },
          ),
    );
  }
}

// mock auth state
class AuthService extends ChangeNotifier {
  bool _isAuthenticated = false;

  bool get isAuthenticated => _isAuthenticated;

  bool _isVerified = false;

  bool get isVerified => _isVerified;

  set isVerified(bool value) {
    _isVerified = value;
    notifyListeners();
  }

  set isAuthenticated(bool value) {
    _isAuthenticated = value;
    notifyListeners();
  }

  void loginAndVerify() {
    _isAuthenticated = true;
    _isVerified = true;
    notifyListeners();
  }

  void logout() {
    _isAuthenticated = false;
    _isVerified = false;
    notifyListeners();
  }
}
