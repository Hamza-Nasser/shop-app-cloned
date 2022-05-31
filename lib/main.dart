import 'package:flutter/material.dart';
import 'package:shop_cloned/route/router.dart' as router;
import 'package:shop_cloned/route/route_constants.dart';

void main() {
  //examining git issue
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Shop',
      theme: ThemeData.light(),
      themeMode: ThemeMode.light,
      onGenerateRoute: router.generateRoute,
      initialRoute: loginScreenRoute,
    );
  }
}
