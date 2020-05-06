//import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class APIServices{
/*
  static String studentUrl ="http://192.168.0.196:81/api/Student/Get_StuList";//'http://192.168.0.196:81/Student';

  static Future fechStudent() async{
    return await http.get(studentUrl);
  }
*/
   static Future fechString(String v1) async{
    return await http.get(v1);
  }
}