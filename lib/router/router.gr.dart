// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter(
      {GlobalKey<NavigatorState>? navigatorKey, required this.authGuard})
      : super(navigatorKey);

  final AuthGuard authGuard;

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: HomePage(
              key: args.key,
              navigate: args.navigate,
              showUserPosts: args.showUserPosts));
    },
    LoginRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const LoginPage());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(HomeRoute.name, path: '/', guards: [authGuard]),
        RouteConfig(LoginRoute.name, path: '/login-page')
      ];
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<HomeRouteArgs> {
  HomeRoute(
      {Key? key, void Function()? navigate, void Function()? showUserPosts})
      : super(HomeRoute.name,
            path: '/',
            args: HomeRouteArgs(
                key: key, navigate: navigate, showUserPosts: showUserPosts));

  static const String name = 'HomeRoute';
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key, this.navigate, this.showUserPosts});

  final Key? key;

  final void Function()? navigate;

  final void Function()? showUserPosts;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key, navigate: $navigate, showUserPosts: $showUserPosts}';
  }
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/login-page');

  static const String name = 'LoginRoute';
}
