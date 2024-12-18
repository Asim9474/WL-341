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



//////  Buttons
//
// class basicUIdesign extends StatelessWidget {
//   TextEditingController emailController = TextEditingController();
//   TextEditingController passController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white24,
//       appBar: AppBar(
//         backgroundColor: Colors.red[300],
//         title: Text('Home'),
//         centerTitle: true,
//       ),
//
//      body: Padding(
//        padding: EdgeInsets.symmetric(horizontal: 11, vertical: 11),
//          child:
//       Column(
//        children: [
//          ElevatedButton(onPressed: (){
//            print("Elevated button clicked");
//             }, child: Text("Elevated")),
//
//          SizedBox(height: 20,),
//
//          OutlinedButton(onPressed: () { print("Outlined button clicked");
//          }, child: Text("OutLined")),
//
//          SizedBox(height: 20,),
//
//          TextButton(onPressed: () {
//            print("TextButton Clicked");
//          }, child: Text("TextButton")),
//
//          SizedBox(height: 20,),
//
//          IconButton(onPressed: () {
//            print("IconButton Clicked");
//          }, icon: Icon(Icons.home)),
//
//          SizedBox(height: 20,),
//
//           InkWell(
//               onTap: (){ print("InkWell Clicked");},
//                 child: Container(width: 100, height: 50,color: Colors.red, ),
//               ),
//
//          SizedBox(height: 20,),
//
//          GestureDetector(
//            onTap: (){ print("Gesture Clicked");},
//            child: Container(width: 100, height: 50,color: Colors.pink, ),
//          ),
//
//        ],
//      )
//     ),
//     );
//   }
// }


// class basicUIdesign extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white24,
//       appBar: AppBar(
//         backgroundColor: Colors.red[300],
//         title: Text('Home'),
//         centerTitle: true,
//       ),
//
//       body: Padding(
//           padding: EdgeInsets.symmetric(horizontal: 11, vertical: 11),
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 Container( width: 100, height: 50,color: Colors.red,),
//                 Container( width: 100, height: 50,color: Colors.yellow,),
//                 Container( width: 100, height: 50,color: Colors.red,),
//                 Container( width: 100, height: 50,color: Colors.yellow,),
//                 Container( width: 100, height: 50,color: Colors.red,),
//                 Container( width: 100, height: 50,color: Colors.yellow,),
//                 Container( width: 100, height: 50,color: Colors.red,),
//                 Container( width: 100, height: 50,color: Colors.yellow,),
//                 Container( width: 100, height: 50,color: Colors.red,),
//                 Container( width: 100, height: 50,color: Colors.yellow,),
//                 Container( width: 100, height: 50,color: Colors.red,),
//                 Container( width: 100, height: 50,color: Colors.yellow,),
//                 Container( width: 100, height: 50,color: Colors.red,),
//                 Container( width: 100, height: 50,color: Colors.yellow,),
//                 Container( width: 100, height: 50,color: Colors.red,),
//                 Container( width: 100, height: 50,color: Colors.yellow,),
//
//               ],
//             ),
//           )   // SingleChildScrollerView
//
//       ),
//     );
//   }
// }




// class basicUIdesign extends StatelessWidget {
//     @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white24,
//       appBar: AppBar(
//         backgroundColor: Colors.red[300],
//         title: Text('Home'),
//         centerTitle: true,
//       ),
//       body: Padding(
//           padding: EdgeInsets.symmetric(horizontal: 11, vertical: 11),
//             child:
//             Wrap(         // "column" changed to "Wrap" and give orientation with " direction : Axis.vertical"
//              direction: Axis.vertical,    // same work work in Horizontal(default direction )
//              spacing: 11,       // for Horizontal Spacing
//              runSpacing: 11,    // For Vertical Spacing
//              alignment: WrapAlignment.spaceEvenly,    // .spaceEvenly / .spaceAround  / .spaceBetween / .center (alignment for last column blocks)
//        children: [
//           Container( width: 100, height: 50,color: Colors.red,),
//           Container( width: 100, height: 50,color: Colors.yellow,),
//           Container( width: 100, height: 50,color: Colors.red,),
//           Container( width: 100, height: 50,color: Colors.yellow,),
//           Container( width: 100, height: 50,color: Colors.red,),
//           Container( width: 100, height: 50,color: Colors.yellow,),
//           Container( width: 100, height: 50,color: Colors.red,),
//           Container( width: 100, height: 50,color: Colors.yellow,),
//           Container( width: 100, height: 50,color: Colors.red,),
//           Container( width: 100, height: 50,color: Colors.yellow,),
//           Container( width: 100, height: 50,color: Colors.red,),
//           Container( width: 100, height: 50,color: Colors.yellow,),
//           Container( width: 100, height: 50,color: Colors.red,),
//           Container( width: 100, height: 50,color: Colors.yellow,),
//           Container( width: 100, height: 50,color: Colors.red,),
//           Container( width: 100, height: 50,color: Colors.yellow,),
//           Container( width: 100, height: 50,color: Colors.red,),
//           Container( width: 100, height: 50,color: Colors.yellow,),
//           Container( width: 100, height: 50,color: Colors.red,),
//           Container( width: 100, height: 50,color: Colors.yellow,),
//           Container( width: 100, height: 50,color: Colors.red,),
//           Container( width: 100, height: 50,color: Colors.yellow,),
//           Container( width: 100, height: 50,color: Colors.red,),
//           Container( width: 100, height: 50,color: Colors.yellow,),
//           Container( width: 100, height: 50,color: Colors.red,),
//           Container( width: 100, height: 50,color: Colors.yellow,),
//           Container( width: 100, height: 50,color: Colors.red,),
//           Container( width: 100, height: 50,color: Colors.yellow,),
//           Container( width: 100, height: 50,color: Colors.red,),
//           Container( width: 100, height: 50,color: Colors.yellow,),
//           Container( width: 100, height: 50,color: Colors.red,),
//           Container( width: 100, height: 50,color: Colors.yellow,),
//         ],
//       ),
//     ),
//     );
//   }
// }



class basicUIdesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white24,
      appBar: AppBar(
        backgroundColor: Colors.red[300],
        title: Text('Home'),
        centerTitle: true,
      ),

      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 11, vertical: 11),
          child: Stack(
            children: [
              Container(height: double.infinity ,width: double.infinity,color: Colors.pink,),
              Container(height: 300,width: 300,color: Colors.yellow,),
              Positioned( bottom: 115, left: 135,                        // Used to positioned by any number
                  child: Container(height: 200,width: 200,color: Colors.red,)),
              Align( alignment: Alignment.bottomRight,                    // Used to Positioned by center/ left/ right of Top or bottom or Center
                  child: Container(height: 100,width: 100,color: Colors.blue,)),
            ],
          )

      ),
    );
  }
}


/// "dribble.com"   -----------> for UI design examples  : Task: Login Page and SignUP page

