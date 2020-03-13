import 'package:flutter/material.dart';
import 'package:surfwrench_demo/garage_page/garage_page.dart';


class MenuOption extends StatelessWidget {

  MenuOption({this.text, this.style, this.onTapDestination});


  final String text;
  final TextStyle style;
  final Widget onTapDestination;
  

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        title: Text(text, style: style),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => onTapDestination));
        },
        dense: true,
      )
    );
  }
}