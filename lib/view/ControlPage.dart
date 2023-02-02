
import 'package:flutter/material.dart';
import '../theme/colors.dart';
import '../widgets/custom_appbar.dart';
import 'package:makipos/common/form_row.dart';

class  ControlPage extends StatefulWidget {

  ControlPage(this.trailing, this.name, {this.isOn = false});

  final Widget? trailing;
  String name;
  bool isOn;
  @override
  State<ControlPage> createState() => _ControlPageState();
}
final List<ControlPage> appliances = [
  ControlPage(Icon(Icons.battery_charging_full), 'Charge'),
  ControlPage(Icon(Icons.battery_saver), 'Discharge'),
  ControlPage(Icon(Icons.balance), 'Balance'),
  ControlPage(Icon(Icons.emergency), 'Emerfency'),
  ControlPage(Icon(Icons.heat_pump),'Heating'),
  ControlPage(Icon(Icons.device_thermostat), 'Disable Temp.Sensor'),
  ControlPage(Icon(Icons.heart_broken), 'GPS Heartbeat'),
  ControlPage(Icon(Icons.desktop_windows), 'Display Always On'),
];

class _ControlPageState extends State<ControlPage> {
  @override



  Widget build(BuildContext context) {
    double  heightR,widthR;
    heightR = MediaQuery.of(context).size.height / 1080; //v26
    widthR = MediaQuery.of(context).size.width / 2400;
    var curR = widthR;

    return Scaffold(
      appBar: CustomAppbar(),
      backgroundColor: Colors.white,
      body: Center(
          child: ListView.builder(
          itemCount: appliances.length,
          itemBuilder: (context, index) {
            return SwitchListTile(

              title: Text('${appliances[index].name}'),

              value: appliances[index].isOn,

              onChanged: (bool value) {
                setState(() {
                  appliances[index].isOn = value;
                });
              },
              secondary: appliances[index].trailing,
            );

           },
        )
    ),
    );
  }
}





