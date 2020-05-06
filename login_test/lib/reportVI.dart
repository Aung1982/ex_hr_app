import 'package:flutter/material.dart';
import 'package:login_test/model/global.dart' as globals;
//void main() => runApp(MaterialApp(
//      home: Report(),
//  ));

class ReportVI extends StatefulWidget {
  @override
  _ReportVIState createState() => _ReportVIState();
}

class _ReportVIState extends State<ReportVI> {
  @override

  //Color greenclr = Colors.green;
  //Color redclr = Colors.red;

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            reportHeader(),
            //user data header
            Card(
              margin: EdgeInsets.all(5.0),
              color: Colors.blueGrey[100],
              elevation: 5.0,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildLeft('Title'),
                    _buildLeft('ရမှတ်'),
                    _buildLeft('အောင်မှတ်'),
                    //Expanded(child: Text('Title')),
                    // Expanded(child: Text('Marks')),
                    //Expanded(child:  Text('Pass'))
                  ],
                ),
              ),
            ),
            //user data

            reportBody('Target', globals.t1, globals.pT1),
            SizedBox(
              height: 1.0,
            ),
            reportBody('Custormer Satisfy', globals.t2, globals.pT2),
            SizedBox(
              height: 1.0,
            ),
            reportBody('Teamwork', globals.t3, globals.pT3),
            SizedBox(
              height: 1.0,
            ),
            reportBody('Personality', globals.t4, globals.pT4),
            SizedBox(
              height: 1.0,
            ),
            reportBody('SP(Standard Performance)', globals.t5, globals.pT5),
            SizedBox(
              height: 3.0,
            ),
            reportBody('Responsibility', globals.t6, globals.pT6),
            SizedBox(
              height: 1.0,
            ),
          ],
        ),
      ),
    );
  }

// Bulid Stype
  double maxHeight = 28.0;
  Widget _buildLeft(String title) {
    return Container(
      height: maxHeight,
      // color: Colors.red,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          // new MaterialButton(
          //   minWidth: 60.0,
          //   child: new Icon(Icons.keyboard_arrow_up),
          //    onPressed: () => null,
          // ),
          new Container(
            padding: new EdgeInsets.all(5.0),
            child: new Text(title),
          ),
          // new MaterialButton(
          //   minWidth: 60.0,
          //   child: new Icon(Icons.keyboard_arrow_down),
          //   onPressed: () => null,
          //),
        ],
      ),
    );
  }

  Widget _buildCenter(String title) {
    return Expanded(
      child: Container(
        height: maxHeight,
        //color: Colors.blue,
        child: Stack(
          children: <Widget>[
            Positioned(
              child: new Text(title),
              // top: 0.0,
              // left: 0.0,
            ),
            // "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
            /* Positioned(
              bottom: 0.0,
              right: 0.0,
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  new Container(
                    padding: new EdgeInsets.all(2.0),
                    child: new Icon(
                      Icons.access_time,
                      size: 12.0,
                    ),
                  ),
                  new Container(
                    padding: new EdgeInsets.all(2.0),
                    child: new Text("1 hr"),
                  ),
                ],
              ),
            ),*/
          ],
        ),
      ),
    );
  }

  Widget _buildRight(String title, Color clr) {
    return Container(
      height: maxHeight,
      // color: Colors.green,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          //  new MaterialButton(
          //   minWidth: 60.0,
          //   child: new Icon(Icons.save, size: 20.0),
          //   onPressed: () => null,
          // ),
          new Container(
            padding: new EdgeInsets.all(5.0),
            child: new Text(title, style: TextStyle(color: clr),),
          ),
          //new MaterialButton(
          //  minWidth: 60.0,
          //  child: new Icon(Icons.comment, size: 20.0),
          //   onPressed: () => null,
          //),
        ],
      ),
    );
  }
  //build Style

  Widget reportHeader() {
    return Container(
      width: double.infinity,
      height: 280,
      color: Colors.blue[700],
      child: Padding(
        padding: const EdgeInsets.only(
            left: 25.0, right: 25.0, top: 25.0, bottom: 5.0),
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Image.asset(
                  'assets/icon.png',
                  width: 126,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                globals.eID,
                style: TextStyle(color: Colors.white),
              ),
              
              Divider(),
              Text(
                 globals.eName,
                style: TextStyle(color: Colors.white),
              ),
              Divider(),
              Text(
                 globals.saveDate + " :: " +  globals.saveTime,
                style: TextStyle(color: Colors.white),
              ),
              
            ],
          ),
        ),
      ),
    );
  }

  //@override
  // Widget build(BuildContext context) {
  ///   Widget reportBody(String title, String marks, String pass) {
  //   return new Container(
  //     child: new Row(
  //      children: <Widget>[
  //         _buildLeft(title),
  //         _buildCenter(marks),
  //         _buildRight(pass),
  //      ],
  //    ),
  //  );
  // }

  Widget reportBody(String title, double marks, double pass) {
     Color pclr = Colors.red;
              if (pass >= marks)
            {
        pclr = Colors.green;
            }

    return SingleChildScrollView(
      child: Card(
        margin: EdgeInsets.all(5.0),
        // color: Colors.blueGrey[100],
        elevation: 5.0,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // _buildLeft(title),
              // _buildCenter(marks),
              // _buildRight(pass),
              Expanded(child: Text(title)),
              Expanded(child: Text(marks.toString())),
              //Expanded(child:  Text('Pass'))
              _buildRight(pass.toString(), pclr),
            ],
          ),
        ),
      ),
    );

    /* return Card(
      margin: EdgeInsets.only(left: 15.0, right: 15.0),
      elevation: 5.0,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            _buildLeft(title),
            _buildCenter(marks),
           //Expanded(child: Text(marks)),
            _buildRight(pass),
            // Expanded(child: Text(title)),
            // Expanded(child: Text(marks)),
            // Expanded(child: Text(pass)),
          ],
        ),
      ),
    );*/
  }
}
