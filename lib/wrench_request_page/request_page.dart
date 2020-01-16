import 'package:flutter/material.dart';

class RequestPage extends StatelessWidget {
  const RequestPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle style1 = TextStyle(fontSize: 25);
    TextStyle style2 = TextStyle(fontSize: 20);
    TextStyle style3 = TextStyle(fontSize: 15);

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text('Request'),
      ),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Container(
              //color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          child: Text('Today', style: style1),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          //color: Colors.red,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              IconButton(
                                icon: Icon(Icons.cancel),
                                iconSize: 40,
                                onPressed: () {},
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 8),
                          child: Text('Vehicle: 2017 JEEP PATRIOT', style: style2,),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 8),
                          child: Text('Description: Test request', style: style2,),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 12),
                          child: Text('Bids:', style: style2,),
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 8),
                    child: ListView(
                      shrinkWrap: true,
                      children: <Widget>[
                        Text('Test', style: style3,),
                        Divider(height: 12,),
                        Text('Test',style: style3,),
                        Divider(height: 12,),
                        Text('Test', style: style3,),
                        Divider(height: 12,),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
