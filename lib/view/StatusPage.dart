import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:universal_io/io.dart';

import 'dart:async';
import 'dart:io';
import 'package:retry/retry.dart';
import '../theme/colors.dart';
import '../widgets/custom_appbar.dart';

class  StatusPage extends StatefulWidget {
  @override
  _StatusPageState createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  String look = '';
  String jason = '';
  String status = '';
  @override
  Widget build(BuildContext context) {
    double  heightR,widthR;
    heightR = MediaQuery.of(context).size.height / 1080; //v26
    widthR = MediaQuery.of(context).size.width / 2400;
    var curR = widthR;
    postData();
    return Scaffold(
      appBar: CustomAppbar(),
      backgroundColor: Colors.black45,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 5*heightR,),
            Container(
              padding: EdgeInsets.only(left: 300*heightR,right: 300*heightR),
              color: mainColor,
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    'Charge: ON',
                    style: TextStyle(
                      color: secondary,
                      fontSize: 18*heightR,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 300*heightR,right: 300*heightR),
                  decoration: BoxDecoration(
                    border: Border(
                      right: BorderSide(
                          color: Colors.green,
                          width: 2.0,
                          style: BorderStyle.solid
                      ),
                      left: BorderSide(
                          color: Colors.green,
                          width: 2.0,
                          style: BorderStyle.solid
                      ),
                    ),
                  ),
                  child: Text(
                    'Discharge: ON',
                    style: TextStyle(
                      color: secondary,
                      fontSize: 18*heightR,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    'Balance: ON',
                    style: TextStyle(
                      color: secondary,
                      fontSize: 18*heightR,
                    ),
                  ),
                ),
              ],
            ),),
            Container(
              child: Text(
                  "Look:$look\n"
                  "Json: ${jason}\n"
                  "Status: $status"),
            ),
            // IconButton(
            //   onPressed: () {
            //     _makePostRequest(url);
            //     // do something
            //   },
            //   icon: Icon(
            //     Icons.menu,
            //     color: secondary,
            //   ),
            // ),
          ],
        ),
      ), //Center
    );
  }
  postData() async {
    try {
      var response = await http.post(
          Uri.parse("https://smarthome.test.makipos.net:3029/users-service/users/authentication?_v=1"),
          headers: {
            "Content-type": "application/json; charset=utf-8",
            // "Accept": "application/json",
            // "Ocp-Apim-Subscription-Key": "63b5363c0a3a520007fa2ab9",
            // "Ocp-Apim-Trace": "true"
          },
          body: jsonEncode({
            "authCode": false,
            "strategy": "local",
            "username": "BMS_admin",
            "password": "01012023"
          }));
      print("${response.statusCode}");
      print("${response.body}");
      var response1 = await http.get(
          Uri.parse("https://smarthome.test.makipos.net:3029/users"),
          headers: {
            // "Content-type": "application/json; charset=utf-8",
            "Accept": "application/json",
            "Authorization":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2M2I1M2M0NDYxMjVkYjAwMDdjYTIwZmMiLCJ1c2VybmFtZSI6IkJNU19hZG1pbiIsInR5cGUiOiJ1c2VyIiwiaWF0IjoxNjcyODI4NTA3LCJleHAiOjEwMzEyODI4NTA3LCJhdWQiOiJodHRwOi8vc2VydmVyLm1ha2lwb3MubmV0OjMwMjgiLCJpc3MiOiJodHRwOi8vc2VydmVyLm1ha2lwb3MubmV0OjMwMjgiLCJzdWIiOiIiLCJqdGkiOiI0MjA5OTUxNS0zZmY2LTQ0OTgtYmMxYS02NDg1MmEzM2U5ZjcifQ.HfJz87PI0G1T9nUF0doesD6sY-KTKSbZuJgaWfWN0Uo",

            // "Ocp-Apim-Subscription-Key": "63b5363c0a3a520007fa2ab9",
            // "Ocp-Apim-Trace": "true"
          },
      );
      print("Status1: ${response1.statusCode}");
      print("Body1: ${response1.body}");
    } catch (e) {
      print(e);
    }
  }


}

