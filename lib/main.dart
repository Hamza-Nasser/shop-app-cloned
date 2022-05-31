import 'package:flutter/material.dart';
import 'package:shop_cloned/route/router.dart' as router;
import 'package:shop_cloned/route/route_constants.dart';
//import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isAuthenticated = false;
    return MaterialApp(
      title: 'Flutter Shop',
      theme: ThemeData.light(),
      themeMode: ThemeMode.light,
      onGenerateRoute: router.generateRoute,
      initialRoute: isAuthenticated
          ? homeScreenRoute
          : loginScreenRoute, //the dead code appear here because isAuthenticated is always false.
    );
  }
}
