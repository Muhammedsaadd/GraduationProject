import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
/////////
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
        body: SingleChildScrollView(
          child:Column(
        children: [
          SizedBox(height: 25),
      Row(
        children: [
          SizedBox(width: 10,),
          Icon(Icons.chevron_left,size: 40,color: Colors.green,),
        ],
      ),

      Row(
        children: [
          Container(
            // color: Colors.white,
            width:390 ,
            height: 80,
            child: Center(
              child: Text("Workout Plan",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.yellow),),
            ),
          )
        ],
      ),
        SizedBox(height: 10,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(width: 10,),
                Container(
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.yellow
                  ),
                  child: Center(
                    child:Text("Day 1",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
                  ),
                ),
                SizedBox(width: 10,),
                Container(
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.yellow
                  ),
                  child: Center(
                      child:Text("Day 2",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
                  ),
                ),
                SizedBox(width: 10,),
                Container(
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.yellow
                  ),
                  child: Center(
                      child:Text("Day 3",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
                  ),
                ),
                SizedBox(width: 10,),
                Container(
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.yellow
                  ),
                  child: Center(
                      child:Text("Day 4",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
                  ),
                )
                ,SizedBox(width: 10,),
                Container(
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.yellow
                  ),
                  child: Center(
                      child:Text("Day 5",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
                  ),
                )
                ,SizedBox(width: 10,),
                Container(
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.yellow
                  ),
                  child: Center(
                      child:Text("Day 6",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
                  ),
                ),
                SizedBox(width: 10,),
                Container(
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.yellow
                  ),
                  child: Center(
                      child:Text("Day 7",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
                  ),
                )
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    Container(
                        width: 170,
                        height: 170,

                      decoration: BoxDecoration(
                          // borderRadius: BorderRadius.only(topLeft: Radius.circular(150),topRight: Radius.circular(150)),

                          image: DecorationImage(image: AssetImage("images/gym-handsome-man-during-workout_144627-6229.jpg"), fit: BoxFit.cover)
                      ),

                    ),

                    Container(
                        width: 170,
                        height: 170,

                        child:
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Image.network("https://i.ytimg.com/vi/gey73xiS8F4/maxresdefault.jpg",fit: BoxFit.fill,),
                        )

                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Workout 1",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                    Text("Workout 2",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),


                  ],
                ),SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

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

                    Container(
                        width: 170,
                        height: 170,

                        child:Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Image.network("https://i.ytimg.com/vi/gey73xiS8F4/maxresdefault.jpg"),
                        )

                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Workout 3",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                    Text("Workout 4",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),


                  ],
                ),SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

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

                    Container(
                        width: 170,
                        height: 170,

                        child:Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Image.network("https://i.ytimg.com/vi/gey73xiS8F4/maxresdefault.jpg"),
                        )

                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Workout 5",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                    Text("Workout 6",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),


                  ],
                ),

              ],
            ),
          )

        ]))

        ));
  }}