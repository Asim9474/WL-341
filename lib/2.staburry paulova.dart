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
      home: HomePage(),
    );
  }
}


class HomePage extends StatelessWidget {
  //const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Home'),
        centerTitle: true,
      ),
0
      body:Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,  //end, start, center, spaceEvenly , spaceAround, spaceBetween .....
          crossAxisAlignment: CrossAxisAlignment.start,   // stretch  , start....
          children: [
                Container( width: 300, height: 400,color: Colors.white, padding: EdgeInsets.symmetric(horizontal: 11),
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    Container(width: 300, height: 30, decoration: BoxDecoration( color: Colors.blue[100], border: Border.all(width:1.5, color: Colors.black)), /*margin: EdgeInsets.symmetric( horizontal: 20)*/ child: Center(child: Text("Strawberry Pavlova", style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold))),),
                    SizedBox(height: 10,),
                    Container(width: 300, height: 130, decoration: BoxDecoration( color: Colors.blue[100], border: Border.all(width:1.5, color: Colors.black)), child: Center(child: Text("Strawberry Pavlova: This swoon-worthy STRAWBERRIES & CREAM PAVLOVA is the perfect dessert of the season as bright, juicy strawberries are aplenty now. The strawberries are lightly macerated with sugar to release a bit of the juices, their sweet-tartness forming a sublime trifecta with billowy whipped cream and crisp meringue. ", textAlign: TextAlign.center ,style: TextStyle(fontSize: 11, color: Colors.black, fontWeight: FontWeight.bold))),),
                    SizedBox(height: 10,),
                    Container(width: 300, height: 20,/*color: Colors.yellow,*/decoration: BoxDecoration(color: Colors.blue[100],border: Border.all(width:1.5, color: Colors.black),),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 20,),
                            Icon(Icons.star,color: Colors.black,size: 15,),
                            Icon(Icons.star,color: Colors.black,size: 15,),
                            Icon(Icons.star,color: Colors.black,size: 15,),
                            Icon(Icons.star,color: Colors.black,size: 15,),
                            SizedBox(width: 80,),

                          ],
                        ),
                        Text("129 review", style: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.bold),),
                      ],

                    ),
                     ),
                    SizedBox(height: 10,),
                    Container(width: 300, height: 80,/*color: Colors.black,*/decoration: BoxDecoration( color: Colors.blue[100], border: Border.all(width:1.5, color: Colors.black)),),
                    SizedBox(height: 90,),
                  ],
                ),),
                Container( width: 550, height: 400, 
                child: Image.asset("assets/images/Stawburry Pavlova.png",fit: BoxFit.cover,),),


                    ],
        ),
      ),

    );


  }
}
