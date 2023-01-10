import 'package:flutter/material.dart';
import '../theme/colors.dart';
import '../widgets/custom_appbar.dart';

class  SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    double  heightR,widthR;
    heightR = MediaQuery.of(context).size.height / 1080; //v26
    widthR = MediaQuery.of(context).size.width / 2400;
    var curR = widthR;
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
                  Column(
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
                    ],
                  ),
                  Column(
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
                    ],
                  ),
                ],
              ),)
          ],
        ),
      ), //Center
    );
  }
}
