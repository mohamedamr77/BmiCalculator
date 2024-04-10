import 'package:bmiapp/ui/homepage.dart';
import 'package:bmiapp/ui/result.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
           home: HomePage(),
             debugShowCheckedModeBanner: false,
    );
  }
}