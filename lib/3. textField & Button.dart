import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,  // to remove banner from app bar
      title: 'Flutter Demo',
      home: basicUIdesign(),
    );
  }
}



class basicUIdesign extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Home'),
        centerTitle: true,
      ),

      body:Padding( padding: EdgeInsets.symmetric(horizontal: 100, vertical: 30),
          child: Column(
            children: [
              SizedBox(height: 50,),
              TextField(
                cursorColor: Colors.yellow,
                controller: emailController,
                onChanged: (v){ print(v); },                   // onChanged controller use for password entry
               // keyboardType: TextInputType.emailAddress,    // get key board input type
                keyboardType: TextInputType.number,
                //obscureText: true,                             // to hide input data
               // obscuringCharacter: "*",                       // to hide input data with any specific character, as star, hax, any character
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email_rounded),
                  suffixText: "@gmail.com",
                  label: Text('Email'),
                  hintText: "Enter your Email ID",
                  // disabledBorder: ,
                  // errorBorder: ,
                 // border: ,
                  enabledBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: BorderSide(width: 1, color: Colors.black)
                ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                    borderSide: BorderSide(width: 2, color: Colors.blue)
                  ),
              ),
              ),
              SizedBox(height: 20,),
              TextField(
                cursorColor: Colors.yellow,
                controller: passController,
                onChanged: (v){ print(v); },                   // onChanged controller use for password entry
                // keyboardType: TextInputType.emailAddress,    // get key board input type
                keyboardType: TextInputType.number,
                obscureText: true,                             // to hide input data
                obscuringCharacter: "*",                       // to hide input data with any specific character, as star, hax, any character
                decoration: InputDecoration(
                  label: Text('PassWord'),
                  hintText: "Enter your PassWord",
                  suffixIcon: Icon(Icons.visibility),
                  // disabledBorder: ,
                  // errorBorder: ,
                  // border: ,
                  enabledBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: BorderSide(width: 1, color: Colors.black)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: BorderSide(width: 2, color: Colors.blue)
                  ),
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed:(){
                print(emailController.text);
                print(passController.text);
              }, child: Text('Get Data')),
            ],
          )
          ) ,
    );
  }
}