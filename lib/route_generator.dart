import 'package:flutter/material.dart';
import 'home_page/home_page.dart';
import 'login_page/login_page.dart';


class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings){

    //if data needs to be transferred between routes
    final args = settings.arguments;

    switch(settings.name){
      case '/':
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/login':
        return MaterialPageRoute(builder: (_) => LoginPage());
    }

    //if there's an error it routes back home
    return MaterialPageRoute(builder: (_) => HomePage());
  }
}