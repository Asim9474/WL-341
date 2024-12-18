import 'package:flutter/material.dart';

class movieCustomWidget extends StatelessWidget {
  double mWidth;
  double mHeight;
  String ImgRoute;
  bool netFlexLogo;
  bool topTen;
  movieCustomWidget({ this.mWidth =170, this.mHeight=260, required this.ImgRoute, this.netFlexLogo = false, this.topTen=false });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(11),
      width: mWidth,
      height: mHeight,
      child: Stack(
        children: [
          netFlexLogo ? Image.asset("assets/images/netflex.png", width: 40, height: 40): Container(),
          topTen ? Positioned(
            right: 0,
            child: Container(
              width: 50,
              height: 70,
              decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.only(topRight: Radius.circular(7))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("TOP" , style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold, color: Colors.white),),
                  Text("10", style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold, color: Colors.white))
                ],
              ),
            ),
          ) : Column()
        ],
      ),
      decoration: BoxDecoration( borderRadius: BorderRadius.circular(7),
      image: DecorationImage(image: AssetImage(ImgRoute),),),
    );
  }
}