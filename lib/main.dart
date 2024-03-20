import 'package:dropdown/screen/home1dropdown.dart';
import 'package:dropdown/screen/nyprofile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dropdown Anshu here',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: {

   '/Profile': (_) => Profile(),

      },
    );
  }
}
