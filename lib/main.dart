import 'package:flutter/material.dart';

import 'home_page/home_page.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.grey, canvasColor: Colors.white),
      home: HomePage(),
    );
  }
}
