import 'package:flutter/material.dart';
import 'package:login_test/model/global.dart' as globals;
//void main() => runApp(MyApp());
/*
class ReportIII extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Accounts',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Account(),
    );
  }
}
*/
class ReportIII extends StatefulWidget {
  @override
  _ReportIIIState createState() => _ReportIIIState();
}

class _ReportIIIState extends State<ReportIII> {
  Card topArea() => Card(
        margin: EdgeInsets.all(10.0),
        elevation: 1.0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(50.0))),
        child: Container(
            decoration: BoxDecoration(
                gradient: RadialGradient(
                    colors: [Color(0xFF015FFF), Color(0xFF015FFF)])),
            padding: EdgeInsets.all(5.0),
            // color: Color(0xFF015FFF),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),

                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(globals.eID,
                            style: TextStyle(color: Colors.white, fontSize: 14.0)),
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    )
                  ],
                ),
              /*  Center(
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(globals.eID,
                        style: TextStyle(color: Colors.white, fontSize: 14.0)),
                  ),
                ),*/
                SizedBox(height: 2.0),

                Center(
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(globals.eName,
                        style: TextStyle(color: Colors.white, fontSize: 24.0)),
                  ),
                ),
                SizedBox(height: 2.0),

                Center(
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(globals.saveDate,
                        style: TextStyle(color: Colors.white, fontSize: 14.0)),
                  ),
                ),
                SizedBox(height: 2.0),

                Center(
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(globals.saveTime,
                        style: TextStyle(color: Colors.white, fontSize: 14.0)),
                  ),
                ),
                SizedBox(height: 2.0),

              ],
            )),
      );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
       // drawer: AppDrawer(),
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.blue, //change your color here
          ),
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: Text(
            "HR MARK REPORT",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
         /* actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.blue,
              ),
              onPressed: () {},
            )
          ], */
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                topArea(),
                SizedBox(
                  height: 4.0,
                  //child: Icon(
                   // Icons.refresh,
                   // size: 35.0,
                  //  color: Color(0xFF015FFF),
                  //),
                ), 
                displayAccoutList(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          elevation: 0.0,
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              //mainAxisSize: MainAxisSize.max,
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                /*FlatButton(
                  padding:
                      EdgeInsets.symmetric(vertical: 12.0, horizontal: 30.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0.0)),
                  color: Color(0xFF015FFF),
                  // borderSide: BorderSide(color: Color(0xFF015FFF), width: 1.0),
                  onPressed: () {},
                  child: Text("ACTIVITY"),
                ),*/
               // loginButon();
/*
                FlatButton(
                   padding:
                      EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0.0)),
                      color: Color(0xFF015FFF),
                  //borderSide: BorderSide(color: Color(0xFF015FFF), width: 1.0),
                  onPressed: () {},
                  child: Text("EXIT"),textColor: Colors.white,
                ),
*/

                /*OutlineButton(
                  padding:
                      EdgeInsets.symmetric(vertical: 12.0, horizontal: 28.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0.0)),
                  borderSide: BorderSide(color: Color(0xFF015FFF), width: 1.0),
                  onPressed: () {},
                  child: Text("DETAILS"),
                )*/
              ],
            ),
          ),
          
        ),
             ),
    );
  }
  

  Container accountItems(
          String item, String charge, String dateString, String type,
          {Color oddColour = Colors.white}) =>
      Container(
        decoration: BoxDecoration(color: oddColour),
        padding:
            EdgeInsets.only(top: 20.0, bottom: 20.0, left: 5.0, right: 5.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(item, style: TextStyle(fontSize: 16.0)),
                Text(charge, style: TextStyle(fontSize: 16.0)),
                 Text(charge, style: TextStyle(fontSize: 16.0))
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
           /* Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(dateString,
                    style: TextStyle(color: Colors.grey, fontSize: 14.0)),
                Text(type, style: TextStyle(color: Colors.grey, fontSize: 14.0))
              ],
            ),*/
          ],
        ),
      );

  displayAccoutList() {
    return Container(
      margin: EdgeInsets.all(15.0),
      child: Column(
        children: <Widget>[
          accountItems("Title", "046.00", "28-04-16", "credit",
              oddColour: const Color(0xFFF7F7F9)),
          accountItems(
              "Amazon EU", "028.00", "26-04-16", "credit"),
          accountItems("Amazon EU", r"+ 46.00", "25-04-216", "Payment",
              oddColour: const Color(0xFFF7F7F9)),
          accountItems(
              "Amazon EU", r"+ 026.00", "16-04-16", "Payment"),
          accountItems(
              "Amazon EU", r"+ 076.00", "04-04-16", "Credit",
              oddColour: const Color(0xFFF7F7F9)),
        ],
      ),
    );
  }
}
