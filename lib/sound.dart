import 'package:flutter/material.dart';

class SwitchApp extends StatelessWidget {
  const SwitchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
  backgroundColor: Colors.transparent,
  elevation: 0,
     ),
        backgroundColor: Color.fromARGB(255, 33, 31, 31),
        body: Center(

          child:Column(children: [
SizedBox(height: 20),
        Padding(
            padding: const EdgeInsets.all(20.0),
            child: const Text(
              "Dźwięki",
              textAlign: TextAlign.center,
              style:TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
              Text(
              "ON / OFF",
              textAlign: TextAlign.center,
              style:TextStyle(
                color: Color.fromARGB(255, 254, 254, 254),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          SizedBox(
      height: 70,
      width: 300,
    child:SwitchExample(),
    ),

           
          ],
          ),
        ),
      );

  }
}

class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Switch(
      // This bool value toggles the switch.
      value: light,
      activeColor: Colors.blue,
      onChanged: (bool value) {
        // This is called when the user toggles the switch.
        setState(() {
          light = value;
        });
      },
    );
  }
}
