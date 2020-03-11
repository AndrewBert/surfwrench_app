import 'package:flutter/material.dart';


class LoginPageUnused extends StatelessWidget {

static final TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
final emailField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Email",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Username',
                style: TextStyle(
                  fontSize: 20
                ),
              ),
            ),
            Container(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Username',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 12.0
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text('Password',
              style: TextStyle(
                fontSize: 20
              ),),
            ),
            Container(
              width: 300,
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 12.0
                  ),
                ),
              ),
            ),
            Container(
              height: 200,
            )
          ],
        ),
      ),
    );
  }
}