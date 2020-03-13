
import 'package:flutter/material.dart';
import 'package:surfwrench_demo/login_page/login_page.dart';


class HomeButton extends StatelessWidget{
  HomeButton({this.text, this.textColor, this.buttonColor, this.onPressedPage});

  final String text;
  final Color textColor;
  final Color buttonColor;
  final Widget onPressedPage;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 200,
      child: RaisedButton(
        color: buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
        onPressed: (){

          Navigator.push(context, MaterialPageRoute(builder: (context)=>
          onPressedPage));

        },
        child: Text(
          text,
          style: TextStyle(fontSize: 25),
        ),
        textColor: textColor,
      ),
    );
  }

}

