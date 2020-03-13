import 'package:flutter/material.dart';
import 'package:surfwrench_demo/garage_page/garage_page.dart';
import 'package:surfwrench_demo/home_page/widgets/menu_option.dart';
import 'package:surfwrench_demo/login_page/login_page.dart';
import 'widgets/home_button.dart';

class HomePage extends StatelessWidget {
  final TextStyle style =
      TextStyle(fontFamily: 'Montserrat', fontSize: 20.0, color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
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
                image: AssetImage('assets/gear.png'),
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
      drawer: SafeArea(
        child: Drawer(
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
                    child: Text(
                      'Menu',
                      style: style.copyWith(fontSize: 25, color: Colors.black),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                  ),
                ),
                Divider(
                  color: Colors.white,
                ),
                MenuOption(
                  text: "Garage",
                  style: style,
                  onTapDestination: GaragePage(),
                ),
                Divider(
                  color: Colors.white,
                ),
                MenuOption(
                  text: "Chat",
                  style: style,
                  onTapDestination: GaragePage(),
                ),
                Divider(
                  color: Colors.white,
                ),
                MenuOption(
                  text: "FAQ",
                  style: style,
                  onTapDestination: GaragePage(),
                ),
                Divider(
                  color: Colors.white,
                ),
                MenuOption(
                  text: "About",
                  style: style,
                  onTapDestination: GaragePage(),
                ),
                Divider(
                  color: Colors.white,
                ),
                MenuOption(
                  text: "Contact",
                  style: style,
                  onTapDestination: GaragePage(),
                ),
                Divider(
                  color: Colors.white,
                ),
                MenuOption(
                  text: "Settings",
                  style: style,
                  onTapDestination: GaragePage(),
                ),
                Divider(
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                height: 75,
                //color: Colors.red,
              ),
              HomeButton(
                text: 'Fix My Car',
                textColor: Colors.white,
                buttonColor: Colors.blue,
                onPressedPage: GaragePage(),
              ),
              HomeButton(
                text: 'I Fix Cars',
                textColor: Colors.white,
                buttonColor: Colors.orange,
              ),
              HomeButton(
                text: 'Login',
                textColor: Colors.white,
                buttonColor: Colors.lightGreen,
                onPressedPage: LoginPage(),
              ),
              Container(
                height: 125,
                //color: Colors.red,
              )
            ],
          ),
        ),
      ),
    );
  }
}
