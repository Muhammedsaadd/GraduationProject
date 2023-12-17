import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';
import 'package:group_radio_button/group_radio_button.dart';
import 'package:grouped_buttons/grouped_buttons.dart';
import 'package:untitled2/main1.dart';

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
  var data = [{"Fname": "Muhammed", "Lname": "Saad", "Email": "MuhammedSaad@gmail.com", "Gender": "male", "Password": "123456", "MobileNo": "1023414848", "BirthDate": "2023-10-09", "adminUsername": "Saad"}];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
        SizedBox(height: 30,),
      Row(
        children: [
          SizedBox(width: 10,),
          Icon(Icons.chevron_left,size: 40,color: Colors.yellowAccent,),
        ],
      ),
        SizedBox(height: 45,),
        Row(
          children:[
          SizedBox(width: 40,),
        Text
          ("Choose Your Package",style: TextStyle(fontSize: 33,fontWeight: FontWeight.bold,color: Colors.yellowAccent),
        )
    ],
    )
          ,
          SizedBox(height: 80,),
          RadioListTile(
            selectedTileColor: Colors.yellowAccent,
            activeColor: Colors.yellowAccent,
            title: Text("1 Month",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
            value: "1 Month",
            groupValue: level,
            onChanged: (value){
              setState(() {
                level = value.toString();
              });
            },
          ),
          SizedBox(height: 20,),
          RadioListTile(
            selectedTileColor: Colors.yellowAccent,
            activeColor: Colors.yellowAccent,
            title: Text("3 Months",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
            value: "3 Months",
            groupValue: level,
            onChanged: (value){
              setState(() {
                level = value.toString();
              });
            },
          ),
          SizedBox(height: 20,),
          RadioListTile(
            selectedTileColor: Colors.yellowAccent,
            activeColor: Colors.yellowAccent,
            title: Text("6 Months",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
            value: "6 Months",
            groupValue: level,
            onChanged: (value){
              setState(() {
                level = value.toString();
              });
            },
          ),

          SizedBox(height: 20,),
          RadioListTile(
            selectedTileColor: Colors.yellowAccent,
            activeColor: Colors.yellowAccent,
            title: Text("1 Year",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold ),),
            value: "1 Year",
            groupValue: level,
            onChanged: (value){
              setState(() {
                level = value.toString();
              });
            },
          ),
          SizedBox(
            height: 150,
          ),
          Row(
            children: [
              SizedBox(
                width: 200,
              ),
              Container(
                width: 150,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.yellowAccent

                ),
                child: Center(
                  child: SizedBox(height:40,child:ElevatedButton(onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                MainMenu(data)
                        ));
                  }, child: Text("Next",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),style:ElevatedButton.styleFrom(backgroundColor: Colors.yellowAccent)) ,),)
                ),

            ],
          )
    ]
      ),

    );
  }}