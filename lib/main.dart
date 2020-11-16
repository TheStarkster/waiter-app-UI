import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:waiter_app/routes/router.gr.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      builder: ExtendedNavigator.builder(
        router: Router(),
        initialRoute: '/',
        builder: (context, extendedNav) => Theme(
          data: ThemeData.light(),
          child: extendedNav,
        ),
      ),
    );
  }
}