import 'package:flutter/material.dart';
import 'package:shop_cloned/route/route_constants.dart';
import 'package:shop_cloned/screens/auth/views/login_screen.dart';
import 'package:shop_cloned/screens/home/views/home.dart';


Route<dynamic>? generateRoute(RouteSettings settings){
  switch(settings.name){
    case loginScreenRoute:
      return MaterialPageRoute(
        builder: (context) => LoginScreen(), 
      );
    case homeScreenRoute:
      return MaterialPageRoute(
        builder: (context) => HomeScreen(),
      );
    default:
      return MaterialPageRoute(
        builder: (context) => LoginScreen(),
      );
  }
}

