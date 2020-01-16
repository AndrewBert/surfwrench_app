import 'package:flutter/material.dart';
import 'package:surfwrench_demo/address_page/address_page.dart';
import 'package:surfwrench_demo/bid_page/bid_page.dart';
import 'package:surfwrench_demo/fixmycar_page/fixmycar_page.dart';
import 'package:surfwrench_demo/login_page/login_page.dart';
import 'package:surfwrench_demo/wrench_request_page/request_page.dart';
import 'add_car_page/add_car_page.dart';
import 'home_page/menu_page.dart';
import 'new_test/main_menu_test.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
        canvasColor: Colors.white
      ),
      home: BidPage(),
    );
  }
}



