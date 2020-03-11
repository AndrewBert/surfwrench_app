import 'package:flutter/material.dart';

class GarageItemWidget extends StatelessWidget {
  
  String year;
  String make;
  String model;

  GarageItemWidget({this.year, this.make, this.model});

  final TextStyle body = TextStyle(fontFamily: 'Montserrat', fontSize: 16);
  

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('$year  $make  $model', style: body,),
    );
  }
}