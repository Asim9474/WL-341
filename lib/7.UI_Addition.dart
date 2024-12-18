import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Add',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  Addition(),
    );
  }
}

class Addition extends StatefulWidget{
  const Addition({super.key});

  @override
  State<Addition> createState() => _AdditionState();
  }

  class _AdditionState extends State<Addition> {
    TextEditingController firstNumberController = TextEditingController();
    TextEditingController secondNumberController = TextEditingController();
    String result= "0";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Addition"),
        centerTitle: true,
      ),

      body: Column( mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 200),
              child: TextField(
                controller: firstNumberController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration( hintText: "First Number", suffixIcon: Icon(Icons.numbers), border: OutlineInputBorder(borderRadius: BorderRadius.circular(7))),
              ),
            ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 200),
            child: TextField(
              controller: secondNumberController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration( hintText: "Second Number", suffixIcon: Icon(Icons.numbers), border: OutlineInputBorder(borderRadius: BorderRadius.circular(7))),
            ),
          ),
          SizedBox(height: 40,),
          SizedBox( height: 45, width: 150,
            child: ElevatedButton(onPressed: () {
                        addnumber(firstNumberController.text.toString(), secondNumberController.text.toString());
            },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent, shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(5))),

                child: Text("Tap to ADD")),

          ),
          SizedBox(height: 40,),
          Container( height:50, color: Colors.blueGrey,
              child: Row(
                children: [ Text("       Result : ", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,  ),),
                            Text( result, style:  TextStyle(fontSize: 25),),
                ],
              )),
        ]
      ),
    );
  }

  addnumber(String num1, String num2){
    if(num1==" " || num2==" "){
      setState(() {
         result = "Enter First Number and Second Number";
      });
    }
    else{
      int value1= int.parse(firstNumberController.text.toString());
      int value2= int.parse(secondNumberController.text.toString());
      int sum= value1 + value2;
      setState(() {
        result=sum.toString();
      });
    }
  }
  }
