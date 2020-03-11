import 'package:flutter/material.dart';

class WrenchRequestItemWidget extends StatelessWidget {
  String date;
  String make;
  String bids;

  WrenchRequestItemWidget({this.date, this.make, this.bids});

  final TextStyle body = TextStyle(fontFamily: 'Montserrat', fontSize: 16);

  

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Text('$date  $make  Bids:$bids', style: body),
          Container(
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: Icon(Icons.info),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}