import 'dart:async';
import 'package:counter_iot/view/Widgets/common_widget.dart';
import 'package:counter_iot/view/screens/sensor%20creating%20screen/sensor_createing_page.dart';
import 'package:counter_iot/view/screens/sensor%20reading%20screen/sensor_reading_signal.dart';
import 'package:counter_iot/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:counter_iot/view/screens/home/home_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  //ValueNotifier<String> notifier=ValueNotifier('Abc');

  // late ServerSocket server;
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp]);
    Future.delayed(const Duration(seconds: 2)).then((value) async {
      // open server
      // server = await ServerSocket.bind(internetAddress, portNumber);
      // server.listen((client) {
      //   Provider.of<ServerController>(context, listen: false)
      //       .handleConnection(client);
      // });
      // sensor controller
      // todo:  final val = Provider.of<DatabaseController>(context, listen: false).refreshSensor();
      //  print(val.then((value) => value[0]));
    });
    // Timer(
    //   const Duration(seconds: 8),
    //   () => Navigator.pushReplacement(
    //     context,
    //     MaterialPageRoute(
    //       builder: (context) =>const SensorCreationPage(),
    //     ),
    //   ),
    // );
  }

  @override
  void dispose() {
    // DatabaseHelper.instance.close();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Package Counter v1.0',style: TextStyle(color: Colors.black),),
        iconTheme: IconThemeData(
          color: colorsList(
              colorsList: ColorsLists.black),
        ),
        backgroundColor: colorsList(
          colorsList: ColorsLists.primaryAppBarColor,
        ),
        elevation: 0,
      ),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text("Manage Sensors"),
              leading: Icon(Icons.sensors),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SensorReadingSignal()),
                );
              },
            ),
            ListTile(
              title: Text("Manage Tags"),
              leading: Icon(Icons.watch),
              onTap: (){
                Navigator.pop(context);
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //       builder: (context) => const SensorReadingSignal()),
                // );
              },
            ),
            ListTile(
              title: Text("History"),
              leading: Icon(Icons.history),
              onTap: (){
                Navigator.pop(context);
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //       builder: (context) => const SensorReadingSignal()),
                // );
              },
            ),
            ListTile(
              title: Text("Report"),
              leading: Icon(Icons.analytics_outlined),
              onTap: (){
                Navigator.pop(context);
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //       builder: (context) => const SensorReadingSignal()),
                // );
              },
            ),
            ListTile(
              title: Text("Exit"),
              leading: Icon(Icons.logout),
              onTap: (){
                Navigator.pop(context);
                //Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => EntryPoint('LOGOUT')), (Route<dynamic> route) => false);
              },
            ),
          ],
        ),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'System Ready',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context,MaterialPageRoute(builder: (context) =>const HomeScreen()));
        } ,
        tooltip: 'Activate Counter',
        child: const Icon(Icons.app_registration),
      ), // This trailing comma makes auto-formatting nicer for build methods.
        // body: Center(
        //     child: ElevatedButton(
        //       child: const Text("data"),
        //       onPressed: () {
        //         // Provider.of<DatabaseController>(context, listen: false)
        //         //     .addSensorData();
        //       },
        // ))
    );
  }
}
