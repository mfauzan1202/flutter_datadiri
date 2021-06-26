import 'package:flutter/material.dart';
import 'package:tugas_uts/nav-drawer.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int number = 0;
  void tekan1() {
    setState(() {
      number = number + 1;
    });
  }

  void tekan2() {
    setState(() {
      number = number - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      drawer: DrawerWidget(),
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("Biodata Ozan"),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: Colors.amber,
                border: Border.all(color: Colors.black12),
                borderRadius: BorderRadius.circular(20.0)),
            margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 15, 20, 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20.0),
                        image: DecorationImage(
                            image: AssetImage("assets/pp1.jpeg"),
                            fit: BoxFit.fill)),
                    width: 200,
                    height: 270),
                Text(""),
                Text("Nama : Muhamad Fauzan",
                    style: TextStyle(
                      fontSize: 12 + number.toDouble(),
                      color: Colors.white,
                    )),
                Text("Tanggal Lahir : 12 Februari 2002",
                    style: TextStyle(
                      fontSize: 12 + number.toDouble(),
                      color: Colors.white,
                    )),
                Text("Tempat Lahir : Samarinda",
                    style: TextStyle(
                      fontSize: 12 + number.toDouble(),
                      color: Colors.white,
                    )),
                Text("Jenis Kelamin : Laki-Laki",
                    style: TextStyle(
                      fontSize: 12 + number.toDouble(),
                      color: Colors.white,
                    )),
                Text("Hobi : Asik Asik",
                    style: TextStyle(
                      fontSize: 12 + number.toDouble(),
                      color: Colors.white,
                    )),
                Text("Institut : Universitas Mulawarman",
                    style: TextStyle(
                      fontSize: 12 + number.toDouble(),
                      color: Colors.white,
                    )),
                Text("Motto Hidup : 'There is Always an Impact in everything' ",
                    style: TextStyle(
                      fontSize: 12 + number.toDouble(),
                      color: Colors.white,
                    )),
              ],
            ),
          ),
          Align(
              alignment: Alignment(0, 0.75),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    RaisedButton(
                      child: Text("Perbesar"),
                      color: Colors.pink,
                      onPressed: tekan1,
                    ),
                    RaisedButton(
                      child: Text("Perkecil"),
                      color: Colors.pink,
                      onPressed: tekan2,
                    )
                  ]))
        ],
      ),
    ));
  }
}
