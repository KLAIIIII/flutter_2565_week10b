import 'package:flutter/material.dart';
import 'package:flutter_week10b/home.dart';
import 'package:flutter_week10b/stateful.dart';

class MyApp extends StatelessWidget{
  const MyApp({Key? key}):super(key: key); //1.constuctor

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StateFulPage(),
    );
  }
}