import 'package:flutter/material.dart';
import 'package:tugas_uts/mainpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TUGAS_UTS',
      home: MainPage(),
    );
  }
}
