import 'package:flutter/material.dart';
import 'menu_button_widget.dart';


class MenuPage extends StatelessWidget {
    final TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0,color: Colors.white);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Center(
            child: Container(
              height: 50,
              width: 200,
              child: Image(
                image: AssetImage('assets/surfwrench.png'),
              ),
            ),
          ),
        ),
        actions: <Widget>[
          Container(
            height: 50,
            width: 50,
            child: IconButton(
                icon: Image(
                image: AssetImage('assets/gear_white.png'),
                ), 
                onPressed: () {
                  print('Settings...');
                },
            ),
          ),
          Container(
            height: 20,
            width: 7,
          )
        ],

        //leading: Icon(Icons.menu),
      ),
      drawer: Drawer(
        child: Container(
          color: Color(0xff696969),
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                height: 80,
                color: Colors.indigo,
                child: DrawerHeader(
                  margin: EdgeInsets.only(bottom: 0),
                  child: Text('Menu',
                  style: style.copyWith(fontSize: 25, color: Colors.black),),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                ),
              ),
              ListTile(
                title: Text('Garage',
                style: style),
                onTap: () {
                },
              ),
              ListTile(
                title: Text('Chat',
                style: style,),
                onTap: () {
                },
              ),
              ListTile(
                title: Text('FAQ',
                style: style,),
                onTap: () {
                },
              ),
              ListTile(
                title: Text('About',
                style: style,),
                onTap: () {
                },
              ),
              ListTile(
                title: Text('Contact',
                style: style,),
                onTap: () {
                },
              ),
              ListTile(
                title: Text('Settings',
                style: style,),
                onTap: () {
                },
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              height: 75,
              //color: Colors.red,
            ),
            MenuButtonWidget(
              text: 'Fix My Car',
              textColor: Colors.white,
              buttonColor: Colors.blue,
            ),
            MenuButtonWidget(
              text: 'I Fix Cars',
              textColor: Colors.white,
              buttonColor: Colors.orange,
            ),
            LoginMenuButton(
              text: 'Login',
              textColor: Colors.white,
              buttonColor: Colors.lightGreen,
            ),
            Container(
              height: 125,
              //color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}