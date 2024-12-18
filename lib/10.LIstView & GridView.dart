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


class MyHomePage extends StatelessWidget{
  List<Map<String, dynamic >> mData = [
    {
      "name" : "Ashim",
      "bgColors": Colors.green
    },
    {
      "name" : "Amit",
      "bgColors": Colors.orange
    },
    {
      "name" : "Rovi",
      "bgColors": Colors.blue
    },
    {
      "name" : "Ashim",
      "bgColors": Colors.green
    },
    {
      "name" : "Amit",
      "bgColors": Colors.orange
    },
    {
      "name" : "Rovi",
      "bgColors": Colors.blue
    },
    {
      "name" : "Ashim",
      "bgColors": Colors.green
    },
    {
      "name" : "Amit",
      "bgColors": Colors.orange
    },
    {
      "name" : "Rovi",
      "bgColors": Colors.blue
    },
    {
      "name" : "Ashim",
      "bgColors": Colors.green
    },
    {
      "name" : "Amit",
      "bgColors": Colors.orange
    },
    {
      "name" : "Rovi",
      "bgColors": Colors.blue
    },

    {
      "name" : "Ashim",
      "bgColors": Colors.green
    },
    {
      "name" : "Amit",
      "bgColors": Colors.orange
    },
    {
      "name" : "Rovi",
      "bgColors": Colors.blue
    },
    {
      "name" : "Ashim",
      "bgColors": Colors.green
    },
    {
      "name" : "Amit",
      "bgColors": Colors.orange
    },
    {
      "name" : "Rovi",
      "bgColors": Colors.blue
    },
    {
      "name" : "Ashim",
      "bgColors": Colors.green
    },
    {
      "name" : "Amit",
      "bgColors": Colors.orange
    },
    {
      "name" : "Rovi",
      "bgColors": Colors.blue
    },
    {
      "name" : "Ashim",
      "bgColors": Colors.green
    },
    {
      "name" : "Amit",
      "bgColors": Colors.orange
    },
    {
      "name" : "Rovi",
      "bgColors": Colors.blue
    },

      {
        "name" : "Ashim",
        "bgColors": Colors.green
      },
      {
        "name" : "Amit",
        "bgColors": Colors.orange
      },
      {
        "name" : "Rovi",
        "bgColors": Colors.blue
      },
      {
        "name" : "Ashim",
        "bgColors": Colors.green
      },
      {
        "name" : "Amit",
        "bgColors": Colors.orange
      },
      {
        "name" : "Rovi",
        "bgColors": Colors.blue
      },
      {
        "name" : "Ashim",
        "bgColors": Colors.green
      },
      {
        "name" : "Amit",
        "bgColors": Colors.orange
      },
      {
        "name" : "Rovi",
        "bgColors": Colors.blue
      },
      {
        "name" : "Ashim",
        "bgColors": Colors.green
      },
      {
        "name" : "Amit",
        "bgColors": Colors.orange
      },
      {
        "name" : "Rovi",
        "bgColors": Colors.blue
      }




  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent:100), // here in 'gridDelegate' need to specify the builder is "Count" or "Context" type
              itemCount: mData.length,    // its tell the ListView, display only the mData length
              itemBuilder: (context, index){    /// can write '_ / Cnt/context'  and a/__/index instead of (context, index)
                return Container(
                  margin: EdgeInsets.all(9),
                  height: 100,
                  color: mData[index]["bgColors"],           ////  color: mData[0]["bgColors"], here 'mData[index]' change by 'element'
                  child: Center( child: Text(mData[index]["name"]),
                  ),
                );
              },),
          ),         /// Expanded use to cover for rest of the space and "Flex" specify the cover area between the Expanded
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                itemCount: mData.length, // its tell the ListView, display only the mData length
                scrollDirection: Axis.horizontal,   /// By-default vertical Scrolling....
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, childAspectRatio: 1/2, mainAxisSpacing: 11, crossAxisSpacing: 11, ),  // here in 'gridDelegate' need to specify the builder is "Count" or "Context" type; Aspectratio:9/16 is for ideal protect.
                itemBuilder: (context, index){    /// can write '_ / Cnt/context'  and a/__/index instead of (context, index)
                  return Container(
                    //margin: EdgeInsets.all(9),     // commented when spacing given in "gridDelegate" and padding to "GridView.builder"
                    height: 100,
                    color: mData[index]["bgColors"],           ////  color: mData[0]["bgColors"], here 'mData[index]' change by 'element'
                    child: Center( child: Text(mData[index]["name"]),
                    ),
                  );
                },),
            ),
          ),
        ],
      )

    );
  }

}


/// GridView.builder(
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),  // here in 'gridDelegate' need to specify the builder is "Count" or "Context" type
//         itemBuilder: (context, index){    /// can write '_ / Cnt/context'  and a/__/index instead of (context, index)
//           return Container(
//             margin: EdgeInsets.all(9),
//             height: 100,
//             color: mData[index]["bgColors"],           ////  color: mData[0]["bgColors"], here 'mData[index]' change by 'element'
//             child: Center( child: Text(mData[index]["name"]),
//             ),
//           );
//         },)

///GridView.extent(
//         childAspectRatio: 1/1,     /// container Width & Height ratio
//         maxCrossAxisExtent: 400,
//         children: mData.map((element){
//           return  Container(
//             margin: EdgeInsets.all(9),
//             height: 100,
//             color: element["bgColors"],           ////  color: mData[0]["bgColors"], here 'mData[index]' change by 'element'
//             child: Center( child: Text(element["name"]),
//             ),
//           );
//         }).toList(),)


///GridView.count(
//           childAspectRatio: 1/1,     /// container Width & Height ratio
//           crossAxisCount: 4,
//                children: mData.map((element){
//                  return  Container(
//                             margin: EdgeInsets.all(9),
//                             height: 100,
//                             color: element["bgColors"],           ////  color: mData[0]["bgColors"], here 'mData[index]' change by 'element'
//                             child: Center( child: Text(element["name"]),
//                             ),
//                         );
//     }).toList(),)


/// ListView.builder
//SizedBox( height: 100,   /// 'wrap with SizeBox' of 'ListView' for adjust the containers size
//         child: ListView.builder(
//             scrollDirection: Axis.horizontal,     /// for Horizontal Scroller ( by-default vertical)
//             itemCount: mData.length,
//             itemBuilder: (context, index){ print("item built: $index");
//           return Container(
//         margin: EdgeInsets.all(9),
//         height: 100,
//         color: mData[index]["bgColors"],
//         child: Center( child: Text(mData[index]["name"]),
//         ),
//           );
//         }
//         ),
//       )


/// ListView(     ///  "ListView" work same as "SingleChildScrollView"
// children:
// mData.map((element){
// return Container(
// margin: EdgeInsets.all(21),
// height: 100,
// color: element["bgColors"],
// child: Center( child: Text(element["name"]),
// ),
// );
// }
// ).toList(),
// )