import 'package:flutter/material.dart';
import 'package:surfwrench_demo/home_page/menu_page.dart';
import 'login_page/login_page.dart';


class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings){

    //if data needs to be transferred between routes
    final args = settings.arguments;

    switch(settings.name){
      case '/':
        return MaterialPageRoute(builder: (_) => MenuPage());
      case '/login':
        return MaterialPageRoute(builder: (_) => LoginPage());
    }

    //if there's an error it routes back home
    return MaterialPageRoute(builder: (_) => MenuPage());
  }
}