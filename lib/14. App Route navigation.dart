import 'dart:async';

import 'package:flutter/material.dart';
import 'package:projects/1.Column%20&%20Row.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  get name => null;

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

      // initialRoute: "/home",
      // routes: {
      //   "/home" : (_) => MyHomePage(),
      //   "/profile" : (_) => MyProfile(name: "$name")
      // },
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
      Navigator.pushReplacementNamed(context, AppRoutes.HOME_PAGE_ROUTE);

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Icon(Icons.person, size: 100,)),
    );
  }
}


class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text( "Home" ),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Home', style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),),
            TextField(
              controller: nameController,
            ),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context,AppRoutes.PROFILE_PAGE_ROUTE);
            }, child: Text('Next'))
          ],
        ),
      ),
    );

  }
}


class MyProfile extends StatelessWidget {

  String name;
  MyProfile({required this.name});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orange,
        appBar: AppBar(
          title: Text("My Profile"),
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: (){
                Navigator.pop(context);
              }, icon: Icon(Icons.arrow_back_ios_new_outlined)),
              Text("WelCome $name", style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold ),
              ),
            ],
          ),
        )
    );
  }
}


/// AppRoute class for clear picture of Pages Navigation
class AppRoutes {
  static final String HOME_PAGE_ROUTE = "/home";
  static final String SPLASH_PAGE_ROUTE = "/splash";
  static final String PROFILE_PAGE_ROUTE = "/profile";

  static final Map<String, WidgetBuilder> mRoute ={
    SPLASH_PAGE_ROUTE : (_) => SplashScreen(),
    HOME_PAGE_ROUTE : (_) => HomePage(),
    PROFILE_PAGE_ROUTE : (_) => MyProfile(name:""),
  };

}