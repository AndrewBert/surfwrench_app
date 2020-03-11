import 'package:flutter/material.dart';

class FixMyCarPage extends StatefulWidget {
  @override
  _FixMyCarPageState createState() => _FixMyCarPageState();
}

class _FixMyCarPageState extends State<FixMyCarPage> {
  String _carValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Fix My Car'),
      ),
      body: Container(
        
        //color: Colors.grey,
        height: MediaQuery.of(context).size.height,
        margin: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              //color: Colors.red,
              margin: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    //color: Colors.red,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Vehicle: '),
                        IconButton(
                          icon: Icon(Icons.add),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Text('Garage'),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 0,
              child: Container(
                  margin: EdgeInsets.only(left: 10),
                  //color: Colors.red,
                  child: DropdownButton<String>(
                    items: <String>['One', 'Two', 'Three', 'Four']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    hint: Text('Select Vehicle'),
                    onChanged: (String newValue) {
                      setState(() {
                        _carValue = newValue;
                      });
                    },
                    value: _carValue,
                    isExpanded: true,
                  )),
            ),
            Expanded(
              flex: 0,
              child: Container(
                //color: Colors.green,
                margin: EdgeInsets.all(8),
                child: Column(
                  children: <Widget>[
                    Text('Problem Description'),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 8),
                      padding: EdgeInsets.symmetric(horizontal: 3),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)),
                      child: TextField(
                        keyboardType: TextInputType.multiline,
                        maxLines: 4,
                        textAlign: TextAlign.left,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText:
                              'Briefly tell us what\'s wrong with your car ',
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                //color: Colors.blue,
                margin: EdgeInsets.all(8),
                child: Column(
                  children: <Widget>[
                    Text('Problem Type'),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(right: 8),
                              child: RaisedButton(
                                color: Colors.white,
                                onPressed: () {},
                                child: Text('Test'),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(right: 8),
                              child: RaisedButton(
                                color: Colors.white,
                                onPressed: () {},
                                child: Text('Test'),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(right: 8),
                              child: RaisedButton(
                                color: Colors.white,
                                onPressed: () {},
                                child: Text('Test'),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(right: 8),
                              child: RaisedButton(
                                color: Colors.white,
                                onPressed: () {},
                                child: Text('Test'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(right: 8),
                              child: RaisedButton(
                                color: Colors.white,
                                onPressed: () {},
                                child: Text('Test'),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(right: 8),
                              child: RaisedButton(
                                color: Colors.white,
                                onPressed: () {},
                                child: Text('Test'),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(right: 8),
                              child: RaisedButton(
                                color: Colors.white,
                                onPressed: () {},
                                child: Text('Test'),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(right: 8),
                              child: RaisedButton(
                                color: Colors.white,
                                onPressed: () {},
                                child: Text('Test'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
                  margin: EdgeInsets.all(25),
                  color: Colors.green,
                  child: FlatButton(
                    child: Text('Next'),
                    onPressed: () {
                      
                    },
                  ),
                ),
          ],
        ),
      ),
    );
  }
}
