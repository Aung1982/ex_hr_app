import 'package:flutter/material.dart';

//void main() => runApp(new MyApp());

class ReportII extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<ReportII> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("LinearLayout Example"),
        ),
        body: new Container(
          color: Colors.yellowAccent,
          child: new Container(
            child: new Row(
              children: [
                new Expanded(
                  child: new Container(
              
          child: Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Text("EXCELLENT HR REPORT"),
              ),
              //alignment: AlignmentDirectional.center,
            ),
                              // child: new Text("EXCELLENT HR REPORT"),
                              //         color: Colors.red,
                  
                //  ),
                  
                  flex: 6,
                ),
                new Expanded(
                  child: new Container(
                    child: new Icon(
                      Icons.pie_chart,
                      size: 100.0,
                    ),
                    color: Colors.blue,
                  ),
                  flex: 3,
                ),
                new Expanded(
                  child: new Container(
                    child: new Icon(
                      Icons.email,
                      size: 50.0,
                    ),
                    color: Colors.green,
                  ),
                  flex: 3,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}