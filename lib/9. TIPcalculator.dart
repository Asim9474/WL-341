import 'package:flutter/cupertino.dart';
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
      title: 'TIP Calculator',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff03C9BD)),
        useMaterial3: true,
      ),
      home:  HomePage(),
    );
  }
}

class HomePage extends StatefulWidget{
   HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   var billAmtController = TextEditingController();

   int perCount=1;
   int tipPercent= 0;
   num totalBillAmt= 0.00;
   num totalTipAmt= 0.00;
   num totalAmt=0.00;
   num perPersonAmt=0.00;

  @override
  Widget build(BuildContext context) {
    return SafeArea(      // safeArea used to safe the Top of UI from the above part of the mobile.
      child: Scaffold(
        backgroundColor: Color(0xFFF5F3F4),
         body: Padding(
           padding: const EdgeInsets.all(30.0),
           child: Column(
             children: [
               Expanded(
                   flex: 3,
                   child: getTitlePart1()),
               Expanded(
                   flex: 6,
                   child: getTipDetailsPart2()),
               Expanded(
                   flex: 3,
                   child: getEnterBillPart3()),
               Expanded(
                   flex: 4,
                   child:getCustomerTipPart4() ),
               Expanded(
                   flex: 3,
                            child: getSplitTotalPart5(),
           ),
           ]
         ),
      ),
    ));
  }

  //// Part-1
  Widget getTitlePart1(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/Stawburry Pavlova.png", width: 100,height: 700,),
        SizedBox(width: 10,),
        Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(
                TextSpan( text: "Mr", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    children: [
                      TextSpan( text: "TIP", style: TextStyle(fontSize: 21, fontWeight: FontWeight.w900, fontFamily: 'Roboto'),
                      ), ]  ),

              ),
              Text("Calculator", style: TextStyle(fontSize:16, fontWeight: FontWeight.bold),),

            ]
        )

      ],
    );
  }

  //// Part-2
  Widget getTipDetailsPart2(){
    return Card(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Total p/peron", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              Text.rich(
                TextSpan( text: "\$", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
                    children: [
                      TextSpan( text: "${perPersonAmt =0.0 ? "000" : perPersonAmt.toStringAsFixed(2)}", style: TextStyle(fontSize: 45, fontWeight: FontWeight.w900, fontFamily: 'Roboto'),
                      ), ]  ),

              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text("Total bill", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                      Text.rich(
                        TextSpan( text: "\$", style: TextStyle(fontSize: 10, fontWeight: FontWeight.w900),
                            children: [
                              TextSpan( text: "${totalBillAmt =0.0 ? "000" : totalBillAmt.toStringAsFixed(2)}", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900, fontFamily: 'Roboto'),
                              ), ]  ),

                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text("Total tip", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                      Text.rich(
                        TextSpan( text: "\$", style: TextStyle(fontSize: 10, fontWeight: FontWeight.w900),
                            children: [
                              TextSpan( text: "${totalTipAmt =0.0 ? "000" : totalTipAmt.toStringAsFixed(2)}", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900, fontFamily: 'Roboto'),
                              ), ]  ),

                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      elevation: 7,color: Colors.pink, shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20),),
    );
  }

  //// Part-3
  Widget getEnterBillPart3(){
    return Row(
    children: [
      Expanded(
        flex:2,
        child: Text.rich(
          TextSpan( text: "Enter\n", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
              children: [
                TextSpan( text: "your bill", style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400 ),),
              ]
          ),

        ),),
      Expanded(
          flex: 6,
          child: TextField(
            controller: billAmtController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                prefixText: "\$",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Colors.white, width: 0)
                )
            ),
          )
      )
    ],
  );}

   /// Part-4
  Widget getCustomerTipPart4(){
    return Row(
    children: [
      Expanded(
        flex:2,
        child: Text.rich(
          TextSpan( text: "Choose\n", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
              children: [
                TextSpan( text: "your tip", style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400 ),),
              ]
          ),
        ),),
      Expanded(
          flex: 6,
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded( child:Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container( width: double.infinity, height: double.infinity, decoration: BoxDecoration( color:Color(0xFF03C9BD), borderRadius: BorderRadius.circular(16)),
                          child: InkWell( onTap: (){
                            tipPercent = 10;
                            updateTheResult();
                          },
                            child: Center(child: Text.rich(
                              TextSpan( text: "10", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900,color: Colors.white),
                                  children: [
                                    TextSpan( text: "%", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white),
                                    ), ]  ),
                            
                            )),
                          )),
                    )),
                    SizedBox(width: 11,),
                    Expanded( child:Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell( onTap: (){
                        tipPercent = 15;
                        updateTheResult();
                      },
                        child: Container( width: double.infinity, height: double.infinity, decoration: BoxDecoration( color:Color(0xFF03C9BD), borderRadius: BorderRadius.circular(16)),
                            child: Center(child: Text.rich(
                              TextSpan( text: "15", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900,color: Colors.white),
                                  children: [
                                    TextSpan( text: "%", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400,color: Colors.white),
                                    ), ]  ),

                            ))),
                      ),
                    )),
                    SizedBox(width: 11,),
                    Expanded( child:Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell( onTap: (){
                        tipPercent = 20;
                        updateTheResult();
                      },
                        child: Container( width: double.infinity, height: double.infinity, decoration: BoxDecoration( color:Color(0xFF03C9BD), borderRadius: BorderRadius.circular(16)),
                            child: Center(child: Text.rich(
                              TextSpan( text: "20", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900,color: Colors.white),
                                  children: [
                                    TextSpan( text: "%", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400,color: Colors.white),
                                    ), ]  ),

                            ))),
                      ),
                    ))
                  ],
                ),
              ),
              SizedBox(height: 11,),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container( width: double.infinity, height: double.infinity, decoration: BoxDecoration( color:Color(0xFF03C9BD), borderRadius: BorderRadius.circular(16)),
                      child: Center(child: Text("Custom tip", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900, color: Colors.white),))),
                ),
              )
            ],
          )
      )
    ],
  );
  }

  //// Part-5
  Widget getSplitTotalPart5(){
    return Row(
      children: [
        Expanded(
          flex:2,
          child: Text.rich(
            TextSpan( text: "Split\n", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
                children: [
                  TextSpan( text: "the total", style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400 ),),
                ]
            ),
          ),),
        Expanded(
            flex: 6,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 11),
              child: Row(
                children: [
                  Expanded(flex: 3 ,
                    child: InkWell( onTap: (){if (perCount>1){perCount--;
                      updateTheResult();} },
                    child: Container( width: double.infinity, height: double.infinity, decoration: BoxDecoration( color:Color(0xFF03C9BD), borderRadius: BorderRadius.only(topLeft: Radius.circular(16),bottomLeft: Radius.circular(16))),
                        child: Center(child: Text("-", style: TextStyle(fontSize: 35, fontWeight: FontWeight.w900, color: Colors.white),))),
                  ),),
                  Expanded(flex: 5, child: Container( width: double.infinity, height: double.infinity, decoration: BoxDecoration( color:Colors.white,),
                      child: Center(child: Text("$perCount ", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900, color: Colors.black),))),),
                  Expanded(flex:3, child: InkWell( onTap: (){perCount++;
                    updateTheResult(); },
                    child: Container( width: double.infinity, height: double.infinity, decoration: BoxDecoration( color:Color(0xFF03C9BD), borderRadius: BorderRadius.only(topRight: Radius.circular(16),bottomRight: Radius.circular(16))),
                        child: Center(child: Text("+", style: TextStyle(fontSize: 35, fontWeight: FontWeight.w900, color: Colors.white),))),
                  ),)
                ],
              ),
            )
        )
      ],
    );
  }

  //// Calculate TIP
void updateTheResult(){
    if (billAmtController.text != " "){
      totalBillAmt= double.parse(billAmtController.text.toString());
      totalTipAmt= totalBillAmt*(tipPercent/100);
      totalAmt= totalBillAmt + totalTipAmt;
      perPersonAmt = totalAmt/ perCount;

      setState(() { });
    } else {
      perCount = 1;
    }
}

}