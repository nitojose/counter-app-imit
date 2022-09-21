import 'package:counter_iot/view/Widgets/sensor_status_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            sensorSwitching(true),
            lnSensorList([
              SensorBoxStatus(),
              SensorBoxStatus(),
              SensorBoxStatus(),
              SensorBoxStatus(),
            ]),
            lnSensorList([
              SensorBoxStatus(),
              SensorBoxStatus(),
              SensorBoxStatus(),
            ]),
          ],
        ),
      )),
    );
  }

  Widget sensorSwitching(bool flag) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: const [
              Text("Working Mode :"),
              Text("Unloading"),
            ],
          ),
          TextButton(onPressed: () {}, child: const Text("Switch to loading"))
        ],
      ),
    );
  }

  Widget lnSensorList(List<SensorBoxStatus> lnSensor) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: lnSensor,
    );
  }
}
