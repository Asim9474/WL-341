import 'package:flutter/material.dart';

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
      home: MyHomePage(),
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
              Navigator.push(context, MaterialPageRoute(builder: (_){
                return MyProfile(name: nameController.text,);  /*Scaffold(
                  appBar: AppBar(
                    title: Text("My Profile"),
                  ),
                  body: Center(
                    child: Text("WSCube Tech", style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold ),
                                    ),
                  )
                ); */    /// Or cut this Scaffold and create a "MyProfile" page And return "MyProfile();" function
              }
              )
              );
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



///// Task : Create App with atleast 25-30 pages : Example 1)Tourist App 2) Cooking App 3) GYM / Exercise===== App