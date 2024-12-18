import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '15. movieCustomWidget.dart';

class HomePage extends StatelessWidget {

  List<Map<String, dynamic>> arrImgPath = [ {
    "imgPath" : "assets/images/moviePoster1.png",
    "netFlexLogo": true,
    "topTen" : false,
  },
    {
      "imgPath" : "assets/images/moviePoster2.png",
      "netFlexLogo": false,
      "topTen" : true,
    },
    {
      "imgPath" : "assets/images/moviePoster3.png",
      "netFlexLogo": true,
      "topTen" : false,
    }

  ];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Home"),
     ),
     body:GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
         crossAxisCount: arrImgPath.length, childAspectRatio: 3/4),
         itemBuilder: (_, index){
       return movieCustomWidget(
           topTen: arrImgPath[index]['topTen'],
           netFlexLogo: arrImgPath[index]['netFlexLogo'],
           ImgRoute: arrImgPath[index]['imgPath']);
     }),
   );
  }

}