import 'package:flutter/material.dart';
import 'package:surfwrench_demo/garage_page/garage_item_widget.dart';
import 'package:surfwrench_demo/garage_page/wrench_request_item_widget.dart';
import 'package:surfwrench_demo/home_page/menu_page.dart';

class GaragePage extends StatelessWidget {
  final TextStyle header =
      TextStyle(fontFamily: 'Montserrat', fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.bold);
  final TextStyle body = TextStyle(fontFamily: 'Montserrat', fontSize: 15);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Center(
            child: Container(
              child: SizedBox.expand(
                child: IconButton(
                  icon: Icon(Icons.home),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>
          MenuPage()));
                  },
                ),
              ),
            ),
          ),
          actions: <Widget>[
            Container(
              child: IconButton(
                icon: Icon(Icons.add),
                onPressed: (){},
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
                      Text('Garage', style: header,),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Welcome, User!', style: body,),
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
                          Text('Wrench Requests', 
                          style: header,),
                          IconButton(
                            icon: Icon(Icons.add_circle_outline),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      SizedBox(height: 15,),
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
        )
      );
  }
}
