import 'dart:async';

import 'package:flutter/material.dart';
import 'package:projects/1.Column%20&%20Row.dart';
import 'package:projects/11.%20Navigator%20&%20Bundle%20Passing.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>{
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), (){
     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Icon(Icons.person, size: 100,)),
    );
    }
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Home Screen", style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),)),
      ),
    );
  }

}

