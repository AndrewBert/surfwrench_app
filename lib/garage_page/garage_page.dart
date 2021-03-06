import 'package:flutter/material.dart';
import 'package:surfwrench_demo/add_car_page/add_car_page.dart';
import 'package:surfwrench_demo/fixmycar_page/fixmycar_page.dart';
import 'package:surfwrench_demo/home_page/home_page.dart';
import 'widgets/garage_item_widget.dart';
import 'widgets/wrench_request_item_widget.dart';

class GaragePage extends StatelessWidget {
  final TextStyle header = TextStyle(
      fontFamily: 'Montserrat',
      fontSize: 20.0,
      color: Colors.black,
      fontWeight: FontWeight.bold);
  final TextStyle body = TextStyle(fontFamily: 'Montserrat', fontSize: 15);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Center(
            child: Container(
              child: SizedBox.expand(
                child: IconButton(
                  icon: Icon(Icons.home),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                ),
              ),
            ),
          ),
          actions: <Widget>[
            Container(
              child: IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>
          AddCarPage()));
                },
              ),
            )
          ],
          title: Center(
            child: Text(
              'Garage',
              style: header,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Garage',
                        style: header,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Welcome, User!',
                        style: body,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: ListView(
                          shrinkWrap: true,
                          children: <Widget>[
                            GarageItemWidget(
                              year: '2017',
                              make: 'AUDI',
                              model: 'A4',
                            ),
                            Divider(
                              color: Colors.grey,
                            ),
                            GarageItemWidget(
                              year: '2017',
                              make: 'JEEP',
                              model: 'PATRIOT',
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            'Wrench Requests',
                            style: header,
                          ),
                          IconButton(
                            icon: Icon(Icons.add_circle_outline),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => FixMyCarPage()));
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: ListView(
                          shrinkWrap: true,
                          children: <Widget>[
                            WrenchRequestItemWidget(
                              date: '2019-05-04',
                              make: 'JEEP',
                              bids: '1',
                            ),
                            Divider(
                              color: Colors.grey,
                            ),
                            WrenchRequestItemWidget(
                              date: '2019-05-04',
                              make: 'JEEP',
                              bids: '0',
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
