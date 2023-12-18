import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

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
  var data;
  var widg = [];
  var workoutname = [];
  Future getUserData() async{
    var url =  Uri.parse(
        'https://unmingled-dates.000webhostapp.com/getWorkout.php');

    var response = await http.post(url, body: {
      // "username": mobile,
    }
    );

    // print(json.decode(response.body));
    var data1 = await json.decode(response.body);
    getData(data1);
    print("data1 ${data1}");
    data=data1;

    print("mamaos ${data1.runtimeType}");
    // Navigator.push(
    //     context,
    //     MaterialPageRoute(
    //         builder: (context) =>
    //             MainMenu(data)
    //     ));
    return data1;

    // return json.decode(response.body);
  }
  getData(var data)  {
    // Email =[] ;
    // rate  =[];
    // fullName =[];
    // mobileNumber =[];
    // gender =[];
    // dateOfBirth=[] ;
    print("data23 $data");
    var fname;
    var lname;
    for(int i =0; i<data.length;i++) {
      // Email.add(data[i]["Email"]);
      // fname = data[i]["Fname"];
      // lname = data[i]["Lname"];
      // fullName .add(fname + " " + lname);
      // // mobileNumber.add(data[i]["Email"]);
      workoutname.add(data[i]["WorkoutName"]);
      // rate.add(data[i]["Rate"]);
    }
     print("Workout Name $workoutname");
    // print("rate $rate");
    // print("full $fullName");
    // print("date $dateOfBirth");
    for(int i =0; i<data.length;i++){

      // widg.add(
      //   Container(
      //       width: 392.5,
      //       height: 500,
      //       // decoration: BoxDecoration(
      //       //     borderRadius: BorderRadius.only(topLeft: Radius.circular(150),topRight: Radius.circular(150)),
      //       //     color: Colors.green,
      //       //     image: DecorationImage(image: AssetImage("images/images.jpeg"), fit: BoxFit.fill)
      //       // ),
      //       child: Column(
      //         children: [
      //           Center(
      //             child:  Container(
      //               width: 300,
      //               height: 350,
      //               decoration: BoxDecoration(
      //                   borderRadius: BorderRadius.only(topLeft: Radius.circular(150),topRight: Radius.circular(150)),
      //                   color: Colors.yellowAccent,
      //                   image: DecorationImage(image: AssetImage("images/images.jpeg"), fit: BoxFit.fill)
      //               ),
      //             ),
      //
      //           ) ,
      //
      //           Text("Coach ${fullName[i]}",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
      //           Container(
      //               margin: EdgeInsets.symmetric(vertical: 12),
      //               width: 100,
      //               child: ClipRRect(
      //                 borderRadius: BorderRadius.circular(29),
      //                 child: SizedBox(height: 40, child:  ElevatedButton(
      //                   // padding: EdgeInsets.symmetric(vertical: 18,horizontal: 38),
      //                   // color: Colors.deepOrange,
      //                   onPressed: () async {
      //                     getUserData();
      //                   },
      //                   child: Text(
      //                     'Info',
      //                     style:
      //                     TextStyle(color: Colors.black, fontSize: 18),
      //                   ),
      //                   style: ElevatedButton.styleFrom(
      //                     primary: Colors.yellow,
      //                   ),
      //                 )),
      //               )),
      //           Row(
      //             children: [
      //               SizedBox(width: 135,),
      //
      //               Container(
      //                 // width: 392.5,
      //
      //                 child: Row(
      //                   children: [
      //
      //
      //                     Icon(Icons.star,color: Colors.yellow,),
      //                     Icon(Icons.star,color: Colors.yellow,),
      //                     Icon(Icons.star,color: Colors.yellow,),
      //                     Icon(Icons.star,color: Colors.yellow,),
      //                     Icon(Icons.star,color: Colors.yellow,),
      //                   ],
      //                 ),
      //
      //               )
      //             ],
      //           )],
      //       )
      //
      //
      //   ),

      //);

    }
    //print("wid ${widg.length}");

  }
  @override
  Widget build(BuildContext context) {
    getUserData();
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