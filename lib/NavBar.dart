import 'package:flutter/material.dart';
import 'package:grzybobranie/gallery.dart';
import 'atlas.dart';
import 'CameraPage.dart';
import 'MapScreen.dart';
import 'SettingsScreen.dart';
import 'homepage.dart';
import 'culinaryRecipe.dart';
import 'package:camera/camera.dart';


class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(

    //backgroundColor: Color.fromARGB(255, 33, 31, 31),
    child: ListView(
      
      padding: EdgeInsets.zero,
      children:  <Widget>[

        ListTile(
          leading: Icon(Icons.home),
          title: Text('Home'),
          onTap: () {
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
        ),

        ListTile(
          leading: Icon(Icons.message),
          title: Text('Atlas grzybów'),
          onTap: () {
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => MushroomAtlas()),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.message),
          title: Text('Przepisy'),
          onTap: () {
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => CulinaryRecipes()),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.add_location),
          title: Text('Mapa'),
          onTap: () {
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => MapPage()),
           );
          },
        ),
        ListTile(
          leading: Icon(Icons.photo_album),
          title: Text('Galeria'),
          onTap: () {
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => RouteOne()),
           );
          },
        ),
        ListTile(
          leading: Icon(Icons.photo_camera),
          title: Text('Aparat'),
          onTap: () async {
            await availableCameras().then((value) => Navigator.push(context,
                MaterialPageRoute(builder: (_) => CameraPage(cameras: value))));
          }, 
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Ustawienia'),
          onTap: () {
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => SettingsScreen()),
            );
          },
        ),
      ],
    ),
  );
  }
}