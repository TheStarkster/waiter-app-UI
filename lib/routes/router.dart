import 'package:auto_route/auto_route_annotations.dart';
import 'package:waiter_app/screens/AddToOrder/index.dart';
import 'package:waiter_app/screens/home/index.dart';
import 'package:waiter_app/screens/login/index.dart';
import 'package:waiter_app/screens/splash.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    CupertinoRoute(
      page: Splash,
      path: "/",
      // initial: true,
    ),
    CupertinoRoute(page: Login, path: "/Login"),
    CupertinoRoute(page: Home, path: "/Home"),
    CupertinoRoute(page: AddToOrder, path: "/AddToOrder"),
  ],
)
class $Router {}
