import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:login_test/report.dart';
import 'package:login_test/api.services.dart';
import 'package:login_test/model/GetString.dart';
import 'package:login_test/report.dart';
import 'package:login_test/model/global.dart' as globals;
import 'package:login_test/reportVI.dart';
import 'package:login_test/reportV.dart';

//import 'package:login_test/ap'
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Login'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

//var List<GetString> getData;
class _MyHomePageState extends State<MyHomePage> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 14.0);
  // final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController txtUsrId = new TextEditingController();
  //final TextEditingController btnSign = new TextEditingController();
  List<GetString> getData;

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

    final emailField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Email",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final passwordField = TextField(
      controller: txtUsrId,
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "User Id",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))),
    );

    final loginButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(10.0),
      color: Colors.blue,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          signIn(txtUsrId.text);
          // Navigator.push(
          //  context,
          //   MaterialPageRoute(builder: (context) => Report()),
          //);
        },
        child: Text("Login",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.normal)),
      ),
    );

//void bool login()

    return Scaffold(
        body: SingleChildScrollView(
      child: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 200.0,
                  child: Image.asset(
                    "assets/hrbanner.jpg",
                    fit: BoxFit.contain,
                  ),
                ),
                // SizedBox(height: 45.0),
                // emailField,
                // SizedBox(height: 25.0),
                passwordField,
                SizedBox(
                  height: 25.0,
                ),
                loginButon,
                SizedBox(
                  height: 260.0,
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }

  signIn(String val1) {
    // final formState = _formKey.currentState;
    //if (formState.validate()) {
    //  formState.save();
   dataclr();
    try {
      // get url
      String studtUrl =
          "http://192.168.0.196:80/api/Student/Get_String/" + val1; //00358/
      //'http://192.168.0.196:81/Student';

      APIServices.fechString(studtUrl).then((reponse) {
        Iterable list = json.decode(reponse.body);
        List<GetString> strList = List<GetString>();
        strList = list.map((model) => GetString.fromObject(model)).toList();
        setState(() {
          getData = strList;
        });
        setState(() {
          loadlogin();
        });
      });
      // }
    } catch (e) {}
    //}
  }
void dataclr()
{
 globals.eID = "";
    globals.eName = "";
    globals.t1 = 0.0;
    globals.t2 = 0.0;
    globals.t3 = 0.0;
    globals.t4 = 0.0;
    globals.t5 = 0.0;
    globals.t6 = 0.0;

    globals.pT1 = 0.0;
    globals.pT2 = 0.0;
    globals.pT3 = 0.0;
    globals.pT4 = 0.0;
    globals.pT5 = 0.0;
    globals.pT6 = 0.0;

    globals.saveDate = "";
    globals.saveTime = "";
}
  void loadlogin() {
    globals.eID = getData[0].eID;
    globals.eName = getData[0].eName;

    globals.t1 = getData[0].t1;
    globals.t2 = getData[0].t2;
    globals.t3 = getData[0].t3;
    globals.t4 = getData[0].t4;
    globals.t5 = getData[0].t5;
    globals.t6 = getData[0].t6;

    globals.pT1 = getData[0].pT1;
    globals.pT2 = getData[0].pT2;
    globals.pT3 = getData[0].pT3;
    globals.pT4 = getData[0].pT4;
    globals.pT5 = getData[0].pT5;
    globals.pT6 = getData[0].pT6;

    globals.saveDate = getData[0].saveDate;
    globals.saveTime = getData[0].saveTime;
    if (globals.eName != "" && globals.eName != null) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ReportV()),
      );
    } else {
      Widget okButton = FlatButton(
        child: Text("OK"),
        onPressed: () {},
      );
      AlertDialog alert = AlertDialog(
        title: Text("Warring"),
        content: Text("Internet connection fill (or) User Id Wrong!."),
        actions: [
          okButton,
        ],
      );

      showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        },
      );
    }
  }
}
