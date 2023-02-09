import 'dart:convert';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:makipos/network/network_resquest.dart';
import '../theme/colors.dart';
import '../theme/textvalue.dart';
import '../widgets/custom_appbar.dart';

class  SettingsPage extends StatefulWidget {
  const SettingsPage(
      this._token,
      );
  final String _token;
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  // Basic setting text
  TextEditingController  cellcount = TextEditingController();
  var _cellcount;
  TextEditingController batterycapacity = TextEditingController();
  var _batterycapacity;

  String id = "635a3bee7f5e970007ecbe57";
  // Advance Settings
  TextEditingController cellOVP = TextEditingController();
  TextEditingController cellOVPR = TextEditingController();
  TextEditingController cellUVPR = TextEditingController();
  TextEditingController cellUVP = TextEditingController();
  TextEditingController continuedChargeCurr = TextEditingController();
  TextEditingController continuedDischargeCurr = TextEditingController();
  TextEditingController dischargeOCPdelay = TextEditingController();
  TextEditingController chargeOTP = TextEditingController();
  TextEditingController dischargeOTP = TextEditingController();
  TextEditingController chargeUTP = TextEditingController();
  TextEditingController startBalanceVolt = TextEditingController();


  TextEditingController PowerOffVolt = TextEditingController();
  TextEditingController maxBalanceCur = TextEditingController();
  TextEditingController chargeOCPdelay = TextEditingController();
  TextEditingController chargeOCPRtime = TextEditingController();
  TextEditingController dischargeOCPRtime = TextEditingController();
  TextEditingController SCPdelay = TextEditingController();
  TextEditingController SCPRtime = TextEditingController();
  TextEditingController chargeOTPR = TextEditingController();
  TextEditingController dischargeOTPR = TextEditingController();
  TextEditingController chargeUTPR = TextEditingController();
  TextEditingController MOSOTP = TextEditingController();
  TextEditingController MOSOTPR = TextEditingController();
  TextEditingController deviceAddr = TextEditingController();
  TextEditingController dischrgPreChrg = TextEditingController();
  TextEditingController userPrivatedata = TextEditingController();


  @override
  Widget build(BuildContext context) {
    double  heightR,widthR;
    heightR = MediaQuery.of(context).size.height / 1080; //v26
    widthR = MediaQuery.of(context).size.width / 2400;
    var curR = widthR;
    final _height_1 = 40*heightR;
    // postDataSetting(id,"single_overvoltage",4200);
    // postDataSetting(id,"single_overvoltage",4200);
    return Scaffold(
      appBar: CustomAppbar(),
      backgroundColor: Colors.black45,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 5*heightR,),
            Container(
              height: 125*heightR,
              padding: EdgeInsets.only(left: 300*heightR,right: 300*heightR),
              color: Colors.black45,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 300*heightR,right: 300*heightR,top: 15*heightR,bottom: 15*heightR),
                        decoration: BoxDecoration(
                          color: Colors.black87,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text(
                          'Discharge: ON',
                          style: TextStyle(
                            color: secondary,
                            fontSize: 18*heightR,
                          ),
                        ),
                      ),
                      SizedBox(height: 20*heightR,),
                      Container(
                        padding: EdgeInsets.only(left: 300*heightR,right: 300*heightR,top: 15*heightR,bottom: 15*heightR),
                        decoration: BoxDecoration(
                          color: Colors.black87,
                          borderRadius: BorderRadius.circular(15),
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 300*heightR,right: 300*heightR,top: 15*heightR,bottom: 15*heightR),
                        decoration: BoxDecoration(
                          color: Colors.black87,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text(
                          'Discharge: ON',
                          style: TextStyle(
                            color: secondary,
                            fontSize: 18*heightR,
                          ),
                        ),
                      ),
                      SizedBox(height: 20*heightR,),
                      Container(
                        padding: EdgeInsets.only(left: 300*heightR,right: 300*heightR,top: 15*heightR,bottom: 15*heightR),
                        decoration: BoxDecoration(
                          color: Colors.black87,
                          borderRadius: BorderRadius.circular(15),
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
              ),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 5*heightR,bottom: 5*heightR),
                    child: Text(
                      "Basic Settings",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.tealAccent,
                        fontSize: 30*heightR,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black54
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(height: 20*heightR,),
                            Container(
                              height: _height_1,
                              child: Text_title(data:"Cell Count:"),
                            ),
                            SizedBox(height: 20*heightR,),
                            Container(
                              height: _height_1,
                              child: Text_title(data:"Battery Capacity(AH):"),
                            ),
                            SizedBox(height: 20*heightR,),
                          ],
                        ),
                        SizedBox(
                          width: 20*heightR,
                        ),
                        Column(
                          children: [
                            SizedBox(height: 20*heightR,),
                            Container(
                              width: 260*heightR,
                              height: _height_1,
                              // color: Colors.red,
                              child: TextField(
                                decoration:  InputDecoration(
                                  border: UnderlineInputBorder(),
                                  labelText: "",
                                ),
                                controller: cellcount,
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.cyanAccent),
                              ),
                            ),
                            SizedBox(height: 20*heightR,),
                            Container(
                              width: 260*heightR,
                              height: _height_1,
                              // color: Colors.red,
                              child: TextField(
                                decoration:  InputDecoration(
                                  border: UnderlineInputBorder(),
                                  labelText: "",
                                ),
                                controller: batterycapacity,
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.cyanAccent),
                              ),
                            ),
                            SizedBox(height: 20*heightR,),
                          ],
                        ),
                        SizedBox(
                          width: 10*heightR,
                        ),
                        Column(
                          children: [
                            SizedBox(height: 20*heightR,),
                            Container(
                                height: _height_1,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.white
                                ),
                              child: TextButton(
                                child:  Text(
                                  "Ok",
                                  style: TextStyle(
                                      color: Colors.white
                                  ),
                                ),
                                onPressed: (){
                                  AwesomeDialog(
                                    context: context,
                                    keyboardAware: true,
                                    dismissOnBackKeyPress: false,
                                    dialogType: DialogType.warning,
                                    animType: AnimType.bottomSlide,
                                    btnCancelText: "No, cancel",
                                    btnOkText: "Yes, continue",
                                    title: 'Continue update!',
                                    // padding: const EdgeInsets.all(5.0),
                                    desc:
                                    'Cell Count:${int.parse(cellcount.text)}',
                                    btnCancelOnPress: () {},
                                    btnOkOnPress: () {
                                      postDataSetting(id,"single_overvoltage",int.parse(cellcount.text));
                                    },
                                  ).show();
                                },
                              )
                            ),
                            SizedBox(height: 20*heightR,),
                            Container(
                              height: _height_1,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.black87
                              ),
                              child: TextButton(
                                  onPressed: (){
                                    AwesomeDialog(
                                      context: context,
                                      keyboardAware: true,
                                      dismissOnBackKeyPress: false,
                                      dialogType: DialogType.warning,
                                      animType: AnimType.bottomSlide,
                                      btnCancelText: "No, cancel",
                                      btnOkText: "Yes, continue",
                                      title: 'Continue update!',
                                      // padding: const EdgeInsets.all(5.0),
                                      desc:
                                      'Battery Capacity:${int.parse(batterycapacity.text)}',
                                      btnCancelOnPress: () {},
                                      btnOkOnPress: () {
                                        postDataSetting(id,"battery_capacity_settings",int.parse(batterycapacity.text));
                                      },
                                    ).show();
                                  },
                                  child: Text(
                                    "Ok",
                                    style: TextStyle(
                                        color: Colors.black
                                    ),
                                  )
                              ),
                            ),
                            SizedBox(height: 20*heightR,),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 5*heightR,bottom: 5*heightR),
                    child: Text(
                      "Advance Settings",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.tealAccent,
                        fontSize: 30*heightR,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.black54
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(height: 20*heightR,),
                            Container(
                              height: _height_1,
                              child: Text_title(data:"Cell OVP(V):"),
                            ),
                            SizedBox(height: 20*heightR,),
                            Container(
                              height: _height_1,
                              child: Text_title(data:"Cell OVPR(V):"),
                            ),
                            SizedBox(height: 20*heightR,),
                            Container(
                              height: _height_1,
                              child: Text_title(data:"Cell UVPR(V):"),
                            ),
                            SizedBox(height: 20*heightR,),
                            Container(
                              height: _height_1,
                              child: Text_title(data:"Cell UVP(V):"),
                            ),
                            SizedBox(height: 20*heightR,),
                            Container(
                              height: _height_1,
                              child: Text_title(data:"Continued Charge Curr.(A):"),
                            ),
                            SizedBox(height: 20*heightR,),
                            Container(
                              height: _height_1,
                              child: Text_title(data:"Continued Discharge Curr.(A):"),
                            ),
                            SizedBox(height: 20*heightR,),
                            Container(
                              height: _height_1,
                              child: Text_title(data:"Discharge OCP Delay(S):"),
                            ),
                            SizedBox(height: 20*heightR,),
                            Container(
                              height: _height_1,
                              child: Text_title(data:"Charge OTP(°C):"),
                            ),
                            SizedBox(height: 20*heightR,),
                            Container(
                              height: _height_1,
                              child: Text_title(data:"Discharge OTP(°C):"),
                            ),
                            SizedBox(height: 20*heightR,),
                            Container(
                              height: _height_1,
                              child: Text_title(data:"Charge UTP(°C):"),
                            ),
                            SizedBox(height: 20*heightR,),
                            Container(
                              height: _height_1,
                              child: Text_title(data:"Start Balance Volt. (mV):"),
                            ),
                            SizedBox(height: 20*heightR,),
                          ],
                        ),
                        SizedBox(
                          width: 20*heightR,
                        ),
                        Column(
                          children: [
                            SizedBox(height: 20*heightR,),
                            Container(
                              width: 260*heightR,
                              height: _height_1,
                              // color: Colors.red,
                              child: TextField(
                                decoration:  InputDecoration(
                                  border: UnderlineInputBorder(),
                                  labelText: "",
                                ),
                                controller: cellOVP,
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.cyanAccent),
                              ),
                            ),
                            SizedBox(height: 20*heightR,),
                            Container(
                              width: 260*heightR,
                              height: _height_1,
                              // color: Colors.red,
                              child: TextField(
                                decoration:  InputDecoration(
                                  border: UnderlineInputBorder(),
                                  labelText: "",
                                ),
                                controller: cellOVPR,
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.cyanAccent),
                              ),
                            ),
                            SizedBox(height: 20*heightR,),
                            Container(
                              width: 260*heightR,
                              height: _height_1,
                              // color: Colors.red,
                              child: TextField(
                                decoration:  InputDecoration(
                                  border: UnderlineInputBorder(),
                                  labelText: "",
                                ),
                                controller: cellUVPR,
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.cyanAccent),
                              ),
                            ),
                            SizedBox(height: 20*heightR,),
                            Container(
                              width: 260*heightR,
                              height: _height_1,
                              // color: Colors.red,
                              child: TextField(
                                decoration:  InputDecoration(
                                  border: UnderlineInputBorder(
                                  ),
                                  labelText: "",
                                ),
                                controller: cellUVP,
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.cyanAccent),
                              ),
                            ),
                            SizedBox(height: 20*heightR,),
                            Container(
                              width: 260*heightR,
                              height: _height_1,
                              // color: Colors.red,
                              child: TextField(
                                decoration:  InputDecoration(
                                  border: UnderlineInputBorder(),
                                  labelText: "",
                                ),
                                controller: continuedChargeCurr,
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.cyanAccent),
                              ),
                            ),
                            SizedBox(height: 20*heightR,),
                            Container(
                              width: 260*heightR,
                              height: _height_1,
                              // color: Colors.red,
                              child: TextField(
                                decoration:  InputDecoration(
                                  border: UnderlineInputBorder(),
                                  labelText: "",
                                ),
                                controller: continuedDischargeCurr,
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.cyanAccent),
                              ),
                            ),
                            SizedBox(height: 20*heightR,),
                            Container(
                              width: 260*heightR,
                              height: _height_1,
                              // color: Colors.red,
                              child: TextField(
                                decoration:  InputDecoration(
                                  border: UnderlineInputBorder(
                                  ),
                                  labelText: "",
                                ),
                                controller: dischargeOCPdelay,
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.cyanAccent),
                              ),
                            ),
                            SizedBox(height: 20*heightR,),
                            Container(
                              width: 260*heightR,
                              height: _height_1,
                              // color: Colors.red,
                              child: TextField(
                                decoration:  InputDecoration(
                                  border: UnderlineInputBorder(),
                                  labelText: "",
                                ),
                                controller: chargeOTP,
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.cyanAccent),
                              ),
                            ),
                            SizedBox(height: 20*heightR,),
                            Container(
                              width: 260*heightR,
                              height: _height_1,
                              // color: Colors.red,
                              child: TextField(
                                decoration:  InputDecoration(
                                  border: UnderlineInputBorder(),
                                  labelText: "",
                                ),
                                controller: dischargeOTP,
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.cyanAccent),
                              ),
                            ),
                            SizedBox(height: 20*heightR,),
                            Container(
                              width: 260*heightR,
                              height: _height_1,
                              // color: Colors.red,
                              child: TextField(
                                decoration:  InputDecoration(
                                  border: UnderlineInputBorder(),
                                  labelText: "",
                                ),
                                controller: chargeUTP,
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.cyanAccent),
                              ),
                            ),
                            SizedBox(height: 20*heightR,),
                            Container(
                              width: 260*heightR,
                              height: _height_1,
                              // color: Colors.red,
                              child: TextField(
                                decoration:  InputDecoration(
                                  border: UnderlineInputBorder(),
                                  labelText: "",
                                ),
                                controller: startBalanceVolt,
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.cyanAccent),
                              ),
                            ),
                            SizedBox(height: 20*heightR,),
                          ],
                        ),
                        SizedBox(
                          width: 10*heightR,
                        ),
                        Column(
                          children: [
                            SizedBox(height: 20*heightR,),
                            Container(
                              height: _height_1,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.black87
                              ),
                              child: TextButton(
                                  onPressed: (){
                                    AwesomeDialog(
                                      context: context,
                                      keyboardAware: true,
                                      dismissOnBackKeyPress: false,
                                      dialogType: DialogType.warning,
                                      animType: AnimType.bottomSlide,
                                      btnCancelText: "No, cancel",
                                      btnOkText: "Yes, continue",
                                      title: 'Continue update!',
                                      // padding: const EdgeInsets.all(5.0),
                                      desc:
                                      'Cell OVP:${int.parse(cellOVP.text)}',
                                      btnCancelOnPress: () {},
                                      btnOkOnPress: () {
                                        postDataSetting(id,"single_overvoltage",int.parse(cellOVP.text));
                                      },
                                    ).show();
                                  },
                                  child: Text(
                                    "Ok",
                                    style: TextStyle(
                                        color: Colors.white
                                    ),
                                  )
                              ),
                            ),
                            SizedBox(height: 20*heightR,),
                            Container(
                              height: _height_1,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.black87
                              ),
                              child: TextButton(
                                  onPressed: (){
                                    AwesomeDialog(
                                      context: context,
                                      keyboardAware: true,
                                      dismissOnBackKeyPress: false,
                                      dialogType: DialogType.warning,
                                      animType: AnimType.bottomSlide,
                                      btnCancelText: "No, cancel",
                                      btnOkText: "Yes, continue",
                                      title: 'Continue update!',
                                      // padding: const EdgeInsets.all(5.0),
                                      desc:
                                      'Cell OVPR:${int.parse(cellOVPR.text)}',
                                      btnCancelOnPress: () {},
                                      btnOkOnPress: () {
                                        postDataSetting(id,"monomer_overvoltage_recovery",int.parse(cellOVPR.text));
                                      },
                                    ).show();
                                  },
                                  child: Text(
                                    "Ok",
                                    style: TextStyle(
                                        color: Colors.white
                                    ),
                                  )
                              ),
                            ),
                            SizedBox(height: 20*heightR,),
                            Container(
                              height: _height_1,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.black87
                              ),
                              child: TextButton(
                                  onPressed: (){
                                    AwesomeDialog(
                                      context: context,
                                      keyboardAware: true,
                                      dismissOnBackKeyPress: false,
                                      dialogType: DialogType.warning,
                                      animType: AnimType.bottomSlide,
                                      btnCancelText: "No, cancel",
                                      btnOkText: "Yes, continue",
                                      title: 'Continue update!',
                                      // padding: const EdgeInsets.all(5.0),
                                      desc:
                                      'Cell UVPR:${int.parse(cellUVPR.text)}',
                                      btnCancelOnPress: () {},
                                      btnOkOnPress: () {
                                        postDataSetting(id,"discharge_overcurrent_protection_value",int.parse(cellUVPR.text));
                                      },
                                    ).show();
                                  },
                                  child: Text(
                                    "Ok",
                                    style: TextStyle(
                                        color: Colors.white
                                    ),
                                  )
                              ),
                            ),
                            SizedBox(height: 20*heightR,),
                            Container(
                              height: _height_1,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.black87
                              ),
                              child: TextButton(
                                  onPressed: (){
                                    AwesomeDialog(
                                      context: context,
                                      keyboardAware: true,
                                      dismissOnBackKeyPress: false,
                                      dialogType: DialogType.warning,
                                      animType: AnimType.bottomSlide,
                                      btnCancelText: "No, cancel",
                                      btnOkText: "Yes, continue",
                                      title: 'Continue update!',
                                      // padding: const EdgeInsets.all(5.0),
                                      desc:
                                      'Cell UVP:${int.parse(cellUVP.text)}',
                                      btnCancelOnPress: () {},
                                      btnOkOnPress: () {
                                        postDataSetting(id,"differential_voltage_protection_value",int.parse(cellUVP.text));
                                      },
                                    ).show();
                                  },
                                  child: Text(
                                    "Ok",
                                    style: TextStyle(
                                        color: Colors.white
                                    ),
                                  )
                              ),
                            ),
                            SizedBox(height: 20*heightR,),
                            Container(
                              height: _height_1,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.black87
                              ),
                              child: TextButton(
                                  onPressed: (){
                                    AwesomeDialog(
                                      context: context,
                                      keyboardAware: true,
                                      dismissOnBackKeyPress: false,
                                      dialogType: DialogType.warning,
                                      animType: AnimType.bottomSlide,
                                      btnCancelText: "No, cancel",
                                      btnOkText: "Yes, continue",
                                      title: 'Continue update!',
                                      // padding: const EdgeInsets.all(5.0),
                                      desc:
                                      'Continued Charge Curr:${int.parse(continuedChargeCurr.text)}',
                                      btnCancelOnPress: () {},
                                      btnOkOnPress: () {
                                        postDataSetting(id,"equalizing_opening_differential",int.parse(continuedChargeCurr.text));
                                      },
                                    ).show();
                                  },
                                  child: Text(
                                    "Ok",
                                    style: TextStyle(
                                        color: Colors.white
                                    ),
                                  )
                              ),
                            ),
                            SizedBox(height: 20*heightR,),
                            Container(
                              height: _height_1,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.black87
                              ),
                              child: TextButton(
                                  onPressed: (){
                                    AwesomeDialog(
                                      context: context,
                                      keyboardAware: true,
                                      dismissOnBackKeyPress: false,
                                      dialogType: DialogType.warning,
                                      animType: AnimType.bottomSlide,
                                      btnCancelText: "No, cancel",
                                      btnOkText: "Yes, continue",
                                      title: 'Continue update!',
                                      // padding: const EdgeInsets.all(5.0),
                                      desc:
                                      'Continued Discharge Curr:${int.parse(continuedDischargeCurr.text)}',
                                      btnCancelOnPress: () {},
                                      btnOkOnPress: () {
                                        postDataSetting(id,"charging_overcurrent_delay",int.parse(continuedDischargeCurr.text));
                                      },
                                    ).show();
                                  },
                                  child: Text(
                                    "Ok",
                                    style: TextStyle(
                                        color: Colors.white
                                    ),
                                  )
                              ),
                            ),
                            SizedBox(height: 20*heightR,),
                            Container(
                              height: _height_1,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.black87
                              ),
                              child: TextButton(
                                  onPressed: (){
                                    AwesomeDialog(
                                      context: context,
                                      keyboardAware: true,
                                      dismissOnBackKeyPress: false,
                                      dialogType: DialogType.warning,
                                      animType: AnimType.bottomSlide,
                                      btnCancelText: "No, cancel",
                                      btnOkText: "Yes, continue",
                                      title: 'Continue update!',
                                      // padding: const EdgeInsets.all(5.0),
                                      desc:
                                      'Discharge OCP Delay:${int.parse(dischargeOCPdelay.text)}',
                                      btnCancelOnPress: () {},
                                      btnOkOnPress: () {
                                        postDataSetting(id,"equalizing_starting_voltage",int.parse(dischargeOCPdelay.text));
                                      },
                                    ).show();
                                  },
                                  child: Text(
                                    "Ok",
                                    style: TextStyle(
                                        color: Colors.white
                                    ),
                                  )
                              ),
                            ),
                            SizedBox(height: 20*heightR,),
                            Container(
                              height: _height_1,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.black87
                              ),
                              child: TextButton(
                                  onPressed: (){
                                    AwesomeDialog(
                                      context: context,
                                      keyboardAware: true,
                                      dismissOnBackKeyPress: false,
                                      dialogType: DialogType.warning,
                                      animType: AnimType.bottomSlide,
                                      btnCancelText: "No, cancel",
                                      btnOkText: "Yes, continue",
                                      title: 'Continue update!',
                                      // padding: const EdgeInsets.all(5.0),
                                      desc:
                                      'Charge OTP:${int.parse(chargeOTP.text)}',
                                      btnCancelOnPress: () {},
                                      btnOkOnPress: () {
                                        postDataSetting(id,"high_temp_protect_bat_charge",chargeOTP.text);
                                      },
                                    ).show();
                                  },
                                  child: Text(
                                    "Ok",
                                    style: TextStyle(
                                        color: Colors.white
                                    ),
                                  )
                              ),
                            ),
                            SizedBox(height: 20*heightR,),
                            Container(
                              height: _height_1,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.black87
                              ),
                              child: TextButton(
                                  onPressed: (){
                                    AwesomeDialog(
                                      context: context,
                                      keyboardAware: true,
                                      dismissOnBackKeyPress: false,
                                      dialogType: DialogType.warning,
                                      animType: AnimType.bottomSlide,
                                      btnCancelText: "No, cancel",
                                      btnOkText: "Yes, continue",
                                      title: 'Continue update!',
                                      // padding: const EdgeInsets.all(5.0),
                                      desc:
                                      'Discharge OTP:${int.parse(dischargeOTP.text)}',
                                      btnCancelOnPress: () {},
                                      btnOkOnPress: () {
                                        postDataSetting(id,"high_temp_protect_bat_discharge",int.parse(dischargeOTP.text));
                                      },
                                    ).show();
                                  },
                                  child: Text(
                                    "Ok",
                                    style: TextStyle(
                                        color: Colors.white
                                    ),
                                  )
                              ),
                            ),
                            SizedBox(height: 20*heightR,),
                            Container(
                              height: _height_1,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.black87
                              ),
                              child: TextButton(
                                  onPressed: (){
                                    AwesomeDialog(
                                      context: context,
                                      keyboardAware: true,
                                      dismissOnBackKeyPress: false,
                                      dialogType: DialogType.warning,
                                      animType: AnimType.bottomSlide,
                                      btnCancelText: "No, cancel",
                                      btnOkText: "Yes, continue",
                                      title: 'Continue update!',
                                      // padding: const EdgeInsets.all(5.0),
                                      desc:
                                      'Charge UTP:${int.parse(chargeUTP.text)}',
                                      btnCancelOnPress: () {},
                                      btnOkOnPress: () {
                                        postDataSetting(id,"charge_cryo_protect",int.parse(chargeUTP.text));
                                      },
                                    ).show();
                                  },
                                  child: Text(
                                    "Ok",
                                    style: TextStyle(
                                        color: Colors.white
                                    ),
                                  )
                              ),
                            ),
                            SizedBox(height: 20*heightR,),
                            Container(
                              height: _height_1,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.black87
                              ),
                              child: TextButton(
                                  onPressed: (){
                                    AwesomeDialog(
                                      context: context,
                                      keyboardAware: true,
                                      dismissOnBackKeyPress: false,
                                      dialogType: DialogType.warning,
                                      animType: AnimType.bottomSlide,
                                      btnCancelText: "No, cancel",
                                      btnOkText: "Yes, continue",
                                      title: 'Continue update!',
                                      // padding: const EdgeInsets.all(5.0),
                                      desc:
                                      'Start Balance Volt:${int.parse(startBalanceVolt.text)}',
                                      btnCancelOnPress: () {},
                                      btnOkOnPress: () {
                                        postDataSetting(id,"tube_temp_protection",int.parse(startBalanceVolt.text));
                                      },
                                    ).show();
                                  },
                                  child: Text(
                                    "Ok",
                                    style: TextStyle(
                                        color: Colors.white
                                    ),
                                  )
                              ),
                            ),
                            SizedBox(height: 20*heightR,),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ), //Center
    );
  }

  // getDatadevice() async{
  //
  //   try{
  //     var responseGet_device = await http.get(
  //       Uri.parse("https://smarthome.test.makipos.net:3029/devices/635a3bee7f5e970007ecbe57"),
  //       headers: {
  //         "Authorization": widget._token.toString()
  //       },
  //     );
  //     print("BodySetting : ${responseGet_device.statusCode}");
  //     Map<String, dynamic> deviceMap = jsonDecode(responseGet_device.body);
  //     _cellcount = deviceMap["data"][0]["propertiesValue"]["strings_settings"].toString();
  //   } catch(e){
  //     print(e);
  //   }
  // }

  postDataSetting(final id,final propertyCode, final value) async{
    print(propertyCode);
    print(value);
    try{
      var response_setting = await http.post(
          Uri.parse(
              "http://smarthome.test.makipos.net:3028/users-control-devices"),
          headers: {
            "Content-type": "application/json",
            "Authorization": widget._token.toString()
          },
          body: jsonEncode(
              {
                "deviceId": id,
                "propertyCode": propertyCode,
                "localId": "1",
                "commandString": "{\"d\":$value}",
                "waitResponse": false,
                "timeout": 1000
              }
          )
      );
      print("BodySetting $propertyCode : ${response_setting.statusCode}");
    } catch(e){
      print(e);
    }
  }
}
