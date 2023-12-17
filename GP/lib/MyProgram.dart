import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  MyApp({ super.key });

  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.black,
      body: Column(
    children: [
    SizedBox(height: 30,),
      Row(
        children: [
          SizedBox(width: 10,),
          Icon(Icons.chevron_left,size: 40,color: Colors.yellow,),
        ],
      ),
      SizedBox(height: 30,),
      Row(
        children:[
          SizedBox(width: 15,),
          Text
          ("My Program",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.yellow),

        ),

        ]
      ),
      SizedBox(height: 25,),
      Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:[
        //SizedBox(width: 15,),
        Container(
            width: 170,
            height: 170,

            child:Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Image.network("https://i.ytimg.com/vi/gey73xiS8F4/maxresdefault.jpg"),
            )

        ),
            Container(width: 170,height: 37,
            child: Center(child: Text("View My Meal",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),),decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.yellow),)
      ],

      ),
      SizedBox(height: 40,),
      Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:[
        //SizedBox(width: 15,),
        Container(
            width: 170,
            height: 170,

            child:Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Image.network("https://i.ytimg.com/vi/gey73xiS8F4/maxresdefault.jpg"),
            )

        ),
            Container(width: 170,height: 37,
            child: Center(child: Text("View My Workouts",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),),decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.yellow),)
      ],

      )
      ],
    
    ),
    
  )
  );
  }
}