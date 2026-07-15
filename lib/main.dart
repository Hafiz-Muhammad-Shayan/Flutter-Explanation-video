import 'package:flutter/material.dart';
import 'package:flutterexplaination/gridview.dart';
import 'package:flutterexplaination/profile_view.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GridviewExample(),
    );
  }
}
