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
     /* home: MyHomePage(),*/
      initialRoute: "/home",
      routes: {
        "/home" : (_) => MyHomePage(),
        "/profile" : (_) => MyProfile(name: "$name")
        
      },
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
             Navigator.pushNamed(context,"/profile");
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


