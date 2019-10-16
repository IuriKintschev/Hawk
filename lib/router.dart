import 'package:flutter/material.dart';
import 'package:hawk/pages/home/home.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hawk app0',
      theme: ThemeData(
        primaryColor: Color(0xff191970),
      ),
      home: HomeUI(),
    );
  }
}
