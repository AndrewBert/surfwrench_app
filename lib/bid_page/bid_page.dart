import 'package:flutter/material.dart';

class BidPage extends StatelessWidget {
  const BidPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle style1 = TextStyle(fontSize: 25);
    TextStyle style2 = TextStyle(fontSize: 20);
    TextStyle style3 = TextStyle(fontSize: 15);

    return Scaffold(
      appBar: AppBar(
        title: Text('Bid'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        margin: EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 15),
              child: Row(
                children: <Widget>[
                  Text(
                    'X Days Ago',
                    style: style2,
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: <Widget>[
                        Text(
                          'Amount: \$50',
                          style: style2,
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 12),
                    child: Row(
                      children: <Widget>[
                        Text(
                          'Comment: Test comment',
                          style: style2,
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 170,
                          height: 40,
                          child: RaisedButton(
                            color: Colors.green,
                            child: Container(child: Text('Accept Bid', style: TextStyle(fontSize: 18),)),
                            onPressed: () {},
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8, vertical: 20),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      //color: Colors.red,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                              margin: EdgeInsets.symmetric(vertical: 8),
                              child: Text(
                                'Technician Info:',
                                style: style1.copyWith(
                                    fontWeight: FontWeight.bold),
                              )),
                          Container(
                              margin: EdgeInsets.symmetric(vertical: 8),
                              child: Text(
                                'Username: Test',
                                style: style2,
                              )),
                          Container(
                            child: Text(
                              'Years Experience',
                              style: style2,
                            ),
                            margin: EdgeInsets.symmetric(vertical: 8),
                          ),
                          Container(
                              margin: EdgeInsets.symmetric(vertical: 8),
                              child: Text(
                                'Work Types:  Body Work, Customization',
                                style: style2,
                              ))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
