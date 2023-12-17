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
    String x = "Eyad";
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.black,
          body: SingleChildScrollView(
            child:Column(
              children: [
                SizedBox(height: 30,),
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
                        child: Text("My Daily Meal",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.yellow),),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(decoration: BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(40),bottomRight: Radius.circular(40)
                    ),
                   color: Colors.yellow
                    ),
                      width: 130,
                      height: 60,
                      child: Center(child:
                        Text("Meal 1",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black))
                        ,),
                    )
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    Container(
                        width: 100,
                        height: 100,

                        child:CircleAvatar(

                          backgroundImage: NetworkImage("https://img.freepik.com/premium-vector/fitness-gym-logo_23987-169.jpg?w=740"),
                        )

                    ),Container(
                        width: 100,
                        height: 100,

                        child:CircleAvatar(

                          backgroundImage: NetworkImage("https://img.freepik.com/premium-vector/fitness-gym-logo_23987-169.jpg?w=740"),
                        )

                    ),Container(
                        width: 100,
                        height: 100,

                        child:CircleAvatar(

                          backgroundImage: NetworkImage("https://img.freepik.com/premium-vector/fitness-gym-logo_23987-169.jpg?w=740"),
                        )

                    ),




                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    Container(
                        width: 100,
                        height: 50,

                        child:Center(

                            child:Text("Meal1",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white))
                        )

                    ),Container(
                        width: 100,
                        height: 50,

                        child:Center(

                            child:Text("Meal2",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white))
                        )

                    ),Container(
                        width: 100,
                        height: 50,

                        child:Center(

                         child:Text("Meal3",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white))
                        )

                    ),




                  ],
                ),
                SizedBox(height: 10,),

                Row(
                  children: [

                    Container(decoration: BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(40),bottomRight: Radius.circular(40)
                    ),
                        color: Colors.yellow
                    ),
                      width: 130,
                      height: 60,
                      child: Center(child:
                      Text("Meal 2",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black))
                        ,),
                    )

                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    Container(
                        width: 100,
                        height: 100,

                        child:CircleAvatar(

                          backgroundImage: NetworkImage("https://img.freepik.com/premium-vector/fitness-gym-logo_23987-169.jpg?w=740"),
                        )

                    ),Container(
                        width: 100,
                        height: 100,

                        child:CircleAvatar(

                          backgroundImage: NetworkImage("https://img.freepik.com/premium-vector/fitness-gym-logo_23987-169.jpg?w=740"),
                        )

                    ),Container(
                        width: 100,
                        height: 100,

                        child:CircleAvatar(

                          backgroundImage: NetworkImage("https://img.freepik.com/premium-vector/fitness-gym-logo_23987-169.jpg?w=740"),
                        )

                    ),




                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    Container(
                        width: 100,
                        height: 50,

                        child:Center(

                            child:Text("Meal1",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white))
                        )

                    ),Container(
                        width: 100,
                        height: 50,

                        child:Center(

                            child:Text("Meal2",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white))
                        )

                    ),Container(
                        width: 100,
                        height: 50,

                        child:Center(

                            child:Text("Meal3",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white))
                        )

                    ),




                  ],
                ),
                SizedBox(height: 10,),

                Row(
                  children: [
                    Container(decoration: BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(40),bottomRight: Radius.circular(40)
                    ),
                        color: Colors.yellow
                    ),
                      width: 130,
                      height: 60,
                      child: Center(child:
                      Text("Meal 3",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black))
                        ,),
                    )
                  ],
                ),
                SizedBox(height: 10,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    Container(
                        width: 100,
                        height: 100,

                        child:CircleAvatar(

                          backgroundImage: NetworkImage("https://img.freepik.com/premium-vector/fitness-gym-logo_23987-169.jpg?w=740"),
                        )

                    ),Container(
                        width: 100,
                        height: 100,

                        child:CircleAvatar(

                          backgroundImage: NetworkImage("https://img.freepik.com/premium-vector/fitness-gym-logo_23987-169.jpg?w=740"),
                        )

                    ),Container(
                        width: 100,
                        height: 100,

                        child:CircleAvatar(

                          backgroundImage: NetworkImage("https://img.freepik.com/premium-vector/fitness-gym-logo_23987-169.jpg?w=740"),
                        )

                    ),




                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    Container(
                        width: 100,
                        height: 50,

                        child:Center(

                            child:Text("Meal1",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white))
                        )

                    ),Container(
                        width: 100,
                        height: 50,

                        child:Center(

                            child:Text("Meal2",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white))
                        )

                    ),Container(
                        width: 100,
                        height: 50,

                        child:Center(

                            child:Text("Meal3",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white))
                        )

                    ),




                  ],
                ),
                Row(
                  children: [
                    Container(decoration: BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(40),bottomRight: Radius.circular(40)
                    ),
                        color: Colors.yellow
                    ),
                      width: 130,
                      height: 60,
                      child: Center(child:
                      Text("Meal 4",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black))
                        ,),
                    )
                  ],
                ),
                SizedBox(height: 10,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    Container(
                        width: 100,
                        height: 100,

                        child:CircleAvatar(

                          backgroundImage: NetworkImage("https://img.freepik.com/premium-vector/fitness-gym-logo_23987-169.jpg?w=740"),
                        )

                    ),Container(
                        width: 100,
                        height: 100,

                        child:CircleAvatar(

                          backgroundImage: NetworkImage("https://img.freepik.com/premium-vector/fitness-gym-logo_23987-169.jpg?w=740"),
                        )

                    ),Container(
                        width: 100,
                        height: 100,

                        child:CircleAvatar(

                          backgroundImage: NetworkImage("https://img.freepik.com/premium-vector/fitness-gym-logo_23987-169.jpg?w=740"),
                        )

                    ),




                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    Container(
                        width: 100,
                        height: 50,

                        child:Center(

                            child:Text("Meal1",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white))
                        )

                    ),Container(
                        width: 100,
                        height: 50,

                        child:Center(

                            child:Text("Meal2",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white))
                        )

                    ),Container(
                        width: 100,
                        height: 50,

                        child:Center(

                            child:Text("Meal3",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white))
                        )

                    ),




                  ],
                ),Row(
                  children: [
                    Container(decoration: BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(40),bottomRight: Radius.circular(40)
                    ),
                        color: Colors.yellow
                    ),
                      width: 130,
                      height: 60,
                      child: Center(child:
                      Text("Meal 5",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black))
                        ,),
                    )
                  ],
                ),
                SizedBox(height: 10,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    Container(
                        width: 100,
                        height: 100,

                        child:CircleAvatar(

                          backgroundImage: NetworkImage("https://img.freepik.com/premium-vector/fitness-gym-logo_23987-169.jpg?w=740"),
                        )

                    ),Container(
                        width: 100,
                        height: 100,

                        child:CircleAvatar(

                          backgroundImage: NetworkImage("https://img.freepik.com/premium-vector/fitness-gym-logo_23987-169.jpg?w=740"),
                        )

                    ),Container(
                        width: 100,
                        height: 100,

                        child:CircleAvatar(

                          backgroundImage: NetworkImage("https://img.freepik.com/premium-vector/fitness-gym-logo_23987-169.jpg?w=740"),
                        )

                    ),




                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    Container(
                        width: 100,
                        height: 50,

                        child:Center(

                            child:Text("Meal1",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white))
                        )

                    ),Container(
                        width: 100,
                        height: 50,

                        child:Center(

                            child:Text("Meal2",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white))
                        )

                    ),Container(
                        width: 100,
                        height: 50,

                        child:Center(

                            child:Text("Meal3",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white))
                        )

                    ),




                  ],
                ),
              ],

            ),
          )
      ),

    );
  }
}