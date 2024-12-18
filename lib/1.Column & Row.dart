
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

        // body: Column(
        //   children: [
        //     Text("Ravi", style: TextStyle(fontSize: 30),),
        //     Text("Amit", style: TextStyle(fontSize: 30),),
        //   ],
        // )

           body:Container(
           child: Row(
               mainAxisAlignment: MainAxisAlignment.start,  //end, start, center, spaceEvenly , spaceAround, spaceBetween .....
               crossAxisAlignment: CrossAxisAlignment.start,   // stretch  , start....
               children: [
                 Column(
                   children: [
                 Container( width: 300, height: 200,color: Colors.red,),
                 SizedBox( height: 20,),   //use for space between two container
                 Container( width: 300, height: 200,color: Colors.pink,),
                   ], ),
                 SizedBox( width: 20,),
                 /////  ROW inside the Column
                 Column(
                   mainAxisAlignment: MainAxisAlignment.start,  //end, start, center, spaceEvenly , spaceAround, spaceBetween .....
                  // crossAxisAlignment: CrossAxisAlignment.start,   // stretch  , start....
                   children: [
                     SizedBox( height: 100,),
                     Container( width: 100, height: 100,color: Colors.pink, alignment: AlignmentDirectional.topEnd,),
                     SizedBox( height: 20,),   //use for space between two container
                     Container( width: 100, height: 100,color: Colors.red,),
                   ],
                 )
               ],
             ),
            ),

           );


  }
}
