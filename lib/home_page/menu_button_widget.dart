
import 'package:flutter/material.dart';
import 'package:surfwrench_demo/login_page/login_page.dart';


class MenuButtonWidget extends StatelessWidget{
  MenuButtonWidget({this.text, this.textColor, this.buttonColor});

  final String text;
  final Color textColor;
  final Color buttonColor;


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

class LoginMenuButton extends MenuButtonWidget{
  LoginMenuButton({String text, Color textColor, Color buttonColor}) : super(text: text, textColor: textColor, buttonColor: buttonColor);

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
          LoginPage()));
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