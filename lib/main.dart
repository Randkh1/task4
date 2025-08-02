import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ControlPanel(),
    );
  }
}

class ControlPanel extends StatefulWidget {
  @override
  _ControlPanelState createState() => _ControlPanelState();
}

class _ControlPanelState extends State<ControlPanel> {
  double motor1 = 0, motor2 = 0, motor3 = 0, motor4 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Robot Arm Control Panel")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Slider(value: motor1, min: 0, max: 180, onChanged: (v) => setState(() => motor1 = v)),
            Slider(value: motor2, min: 0, max: 180, onChanged: (v) => setState(() => motor2 = v)),
            Slider(value: motor3, min: 0, max: 180, onChanged: (v) => setState(() => motor3 = v)),
            Slider(value: motor4, min: 0, max: 180, onChanged: (v) => setState(() => motor4 = v)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: () {}, child: Text("Reset")),
                ElevatedButton(onPressed: () {}, child: Text("Save Pose")),
                ElevatedButton(onPressed: () {}, child: Text("Run")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
