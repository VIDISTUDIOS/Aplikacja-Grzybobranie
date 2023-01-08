import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'CameraPage.dart';
import 'NavBar.dart';
import 'sound.dart';
import 'language.dart';
import 'applicationTheme.dart';
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  backgroundColor: Colors.transparent,
  elevation: 0,
     ),
       drawer: NavBar(),
      backgroundColor: Color.fromARGB(255, 33, 31, 31),
      body: Center(child:
      Column( children: [
        SizedBox(height: 30),
        Padding(
            padding: const EdgeInsets.all(20.0),
            child: const Text(
              "Settings",
              textAlign: TextAlign.center,
              style:TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
 
          SizedBox(height: 30),
    SizedBox(
      height: 70,
      width: 300,
    child:FloatingActionButton.extended(
      
  label: Text(
              "Motyw",
              textAlign: TextAlign.center,
              style:TextStyle(
                color: Color.fromARGB(255, 254, 254, 254),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ), // <-- Text
  backgroundColor: Color.fromARGB(255, 162, 22, 80),
  icon: Icon( // <-- Icon
    Icons.brightness_6_rounded,
    size: 50.0,
  ),
  shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
  onPressed: () {
    Navigator.push(context,
    MaterialPageRoute(builder: (context) => ApplicationTheme()),
            );
  },
),
    ),
             SizedBox(height: 30),
    SizedBox(
      height: 70,
      width: 300,
    child:FloatingActionButton.extended(
      
  label: Text(
              "Język",
              textAlign: TextAlign.center,
              style:TextStyle(
                color: Color.fromARGB(255, 254, 254, 254),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ), // <-- Text
  backgroundColor: Color.fromARGB(255, 162, 22, 80),
  icon: Icon( // <-- Icon
    Icons.language_outlined,
    size: 50.0,
  ),
  shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
  onPressed: () {
    Navigator.push(context,
    MaterialPageRoute(builder: (context) => DropdownButtonApp()),
            );
  },
),
    ),
         SizedBox(height: 30),
    SizedBox(
      height: 70,
      width: 300,
    child:FloatingActionButton.extended(
      
  label: Text(
              "Dźwięki",
              textAlign: TextAlign.center,
              style:TextStyle(
                color: Color.fromARGB(255, 254, 254, 254),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ), // <-- Text
  backgroundColor: Color.fromARGB(255, 162, 22, 80),
  icon: Icon( // <-- Icon
    Icons.volume_down_rounded,
    size: 50.0,
  ),
  shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
  onPressed: () {
    Navigator.push(context,
    MaterialPageRoute(builder: (context) => SwitchApp()),
            );
            },
),
    ),
      ],

      ),
      ),
    );
  }
}