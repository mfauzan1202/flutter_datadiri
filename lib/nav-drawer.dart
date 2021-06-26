import 'package:flutter/material.dart';
import 'package:tugas_uts/mainpage.dart';
import 'package:tugas_uts/secpage.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.black),
        child: Drawer(
            child: ListView(padding: EdgeInsets.zero, children: <Widget>[
          _drawerHeader(),
          ListTile(
            title: Text('Biodata', style: TextStyle(color: Colors.amber)),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MainPage()));
            },
          ),
          ListTile(
              title:
                  Text('Autobiografi', style: TextStyle(color: Colors.amber)),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Sejarah()));
              })
        ])));
  }
}

Widget _drawerHeader() {
  return UserAccountsDrawerHeader(
    decoration: BoxDecoration(
      color: Colors.pink,
    ),
    currentAccountPicture: ClipOval(
      child: Image(image: AssetImage("assets/profile.jpeg"), fit: BoxFit.fill),
    ),
    accountName: Text('Muhamad Fauzan'),
    accountEmail: Text('1915026034'),
  );
}
