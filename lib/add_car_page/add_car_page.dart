import 'package:flutter/material.dart';

class AddCarPage extends StatefulWidget {
  @override
  _AddCarPageState createState() => _AddCarPageState();
}

class _AddCarPageState extends State<AddCarPage> {
  String _makeValue;
  String _modelValue;
  String _trimValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Vehicle'),
        automaticallyImplyLeading: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 75,
                      child: Text(
                        'VIN:',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 10),
                        //color: Colors.red,
                        child: TextField(
                          textAlign: TextAlign.left,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Enter VIN',
                            hintStyle: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 75,
                      child: Text(
                        'Make:',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    Expanded(
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
                            hint: Text('Select Make'),
                            onChanged: (String newValue) {
                              setState(() {
                                _makeValue = newValue;
                              });
                            },
                            value: _makeValue,
                            isExpanded: true,
                          )),
                    ),
                  ],
                ),
                Divider(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 75,
                      child: Text(
                        'Model:',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    Expanded(
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
                            hint: Text('Select Model'),
                            onChanged: (String newValue) {
                              setState(() {
                                _modelValue = newValue;
                              });
                            },
                            value: _modelValue,
                            isExpanded: true,
                          )),
                    ),
                  ],
                ),
                Divider(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 75,
                      child: Text(
                        'Year:',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 10),
                        //color: Colors.red,
                        child: TextField(
                          textAlign: TextAlign.left,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Select Year',
                            hintStyle: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 75,
                      child: Text(
                        'Trim:',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    Expanded(
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
                            hint: Text('Select Trim'),
                            onChanged: (String newValue) {
                              setState(() {
                                _trimValue = newValue;
                              });
                            },
                            value: _trimValue,
                            isExpanded: true,
                          )),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.all(25),
                  color: Colors.green,
                  child: FlatButton(
                    child: Text('Add Vehicle'),
                    onPressed: () {
                      print('Vehicle Added');
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
