import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

void main() {
  runApp(MaterialApp(home: chooseUser(),));
}
class chooseUser extends StatefulWidget{
  @override
  chooseUser({ super.key });

  @override
  State<chooseUser> createState() => _MainMenuState();
}
class _MainMenuState extends State<chooseUser> {

  int index=0;
  String isSelected = "";
  String level = "";
  var Email =[] ;
  var rate  =[];
  var fullName =[];
  var mobileNumber =[];
  var gender =[];
  var dateOfBirth=[] ;
  var data;
  List<Widget> widg=[];
  Future getUserData() async{
    var url =  Uri.parse(
        'https://unmingled-dates.000webhostapp.com/getCoach.php');

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
     Email =[] ;
     rate  =[];
     fullName =[];
     mobileNumber =[];
     gender =[];
     dateOfBirth=[] ;
    print("data23 $data");
    var fname;
    var lname;
    for(int i =0; i<data.length;i++) {
      Email.add(data[i]["Email"]);
      fname = data[i]["Fname"];
      lname = data[i]["Lname"];
      fullName .add(fname + " " + lname);
      // mobileNumber.add(data[i]["Email"]);
      dateOfBirth.add(data[i]["DateOfBirth"]);
      rate.add(data[i]["Rate"]);
    }
    print("email $Email");
    print("rate $rate");
    print("full $fullName");
    print("date $dateOfBirth");
    for(int i =0; i<data.length;i++){
      widg.add(
          Container(
              width: 392.5,
              height: 500,
              // decoration: BoxDecoration(
              //     borderRadius: BorderRadius.only(topLeft: Radius.circular(150),topRight: Radius.circular(150)),
              //     color: Colors.green,
              //     image: DecorationImage(image: AssetImage("images/images.jpeg"), fit: BoxFit.fill)
              // ),
              child: Column(
                children: [
                  Center(
                    child:  Container(
                      width: 300,
                      height: 350,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(150),topRight: Radius.circular(150)),
                          color: Colors.yellowAccent,
                          image: DecorationImage(image: AssetImage("images/images.jpeg"), fit: BoxFit.fill)
                      ),
                    ),

                  ) ,

                  Text("Coach ${fullName[i]}",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 12),
                      width: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(29),
                        child: SizedBox(height: 40, child:  ElevatedButton(
                          // padding: EdgeInsets.symmetric(vertical: 18,horizontal: 38),
                          // color: Colors.deepOrange,
                          onPressed: () async {
                            getUserData();
                          },
                          child: Text(
                            'Info',
                            style:
                            TextStyle(color: Colors.black, fontSize: 18),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.yellow,
                          ),
                        )),
                      )),
                  Row(
                    children: [
                      SizedBox(width: 135,),

                      Container(
                        // width: 392.5,

                        child: Row(
                          children: [


                            Icon(Icons.star,color: Colors.yellow,),
                            Icon(Icons.star,color: Colors.yellow,),
                            Icon(Icons.star,color: Colors.yellow,),
                            Icon(Icons.star,color: Colors.yellow,),
                            Icon(Icons.star,color: Colors.yellow,),
                          ],
                        ),

                      )
                    ],
                  )],
              )


          ),

      );

    }
    print("wid ${widg.length}");

  }

  @override
  Widget build(BuildContext context) {
    getUserData();
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
        children: [
        SizedBox(height: 100,),
    Row(
    children: [
    Container(
    width: 392.5,
    height: 50,
    child: Center(
    child:Text("About Coaches",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 45,color: Colors.yellowAccent),)
    ,
    ),
    ),
    ],
    ),
      SizedBox(
        height: 40,
      ),
        SingleChildScrollView(

          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for(int i = 0 ; i<widg.length;i++)
                widg[i],

            ],
          ),
        ),

          // Container(
          //   width: 300,
          //   height: 350,
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.only(topLeft: Radius.circular(150),topRight: Radius.circular(150)),
          //     color: Colors.green,
          //     image: DecorationImage(image: AssetImage("images/images.jpeg"), fit: BoxFit.fill)
          //   ),

          // )
    ]));
  }
  }