import 'dart:math';

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
      title: 'BMI Calculator',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController wtController = TextEditingController();
  TextEditingController ftController = TextEditingController();
  TextEditingController inController = TextEditingController();

  String bmi= " ";
  String imgPath= "";

  Color bgColors = Colors.white; // Global variable backGround color will change according to BMI


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColors,
      appBar: AppBar(
        title: Center(child: Text('BMI')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Text('BMI Calculator' , style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            TextField(
              controller: wtController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration( label: Text("Weight(in KGs)"), hintText: "Enter Your Weight in KGs here...", enabledBorder: OutlineInputBorder( borderRadius: BorderRadius.circular(21)),
              focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(21))
              ),

            ),
            SizedBox(height: 20,),
            TextField(
              controller: ftController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration( label: Text("Height(in feets)"), hintText: "Enter Your Height in feets here...", enabledBorder: OutlineInputBorder( borderRadius: BorderRadius.circular(21)),
                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(21))
              ),

            ),
            SizedBox(height: 20,),
            TextField(
              controller: inController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration( label: Text("Height(in inch)"), hintText: "Enter Your Height in inch here...", enabledBorder: OutlineInputBorder( borderRadius: BorderRadius.circular(21)),
                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(21))
              ),

            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: () {
              var wt= double.parse(wtController.text.toString());
              var feet= int.parse(ftController.text.toString());
              var inch= int.parse(inController.text.toString());

              int totalIch = (feet*12) + inch;
              num totalCm =totalIch * 2.54;
              num totalM = totalCm / 100;
              num result =wt / (pow(totalM, 2.0));

                  bmi= " Your BMI is ${result.toStringAsFixed(2)}";

                  // backGround color will change according to BMI
              if (result >25){ bgColors = Colors.red.shade200;
                               imgPath= "assets/icons/obesity.png";}
                else if (result < 18) {bgColors = Colors.orange.shade200;
                  imgPath = "assets/icons/diet.png";}
                 else { bgColors = Colors.green.shade200;
                   imgPath= "assets/icons/healthy.png"; }
                  print(bmi);
                  setState(() { });
              },
                child: Text("Calculate")),
            SizedBox(height: 20,),
            Text(bmi),
            SizedBox(height: 10,),
            imgPath != "" ? Image.asset(imgPath):Container(height: 200, width: 300,),





          ],
        ),
      ),

      );

  }
}
