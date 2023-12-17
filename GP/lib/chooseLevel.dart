import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';
import 'package:group_radio_button/group_radio_button.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

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

  @override
  Widget build(BuildContext context) {
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
    child:Text("What is your activity level ?",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.yellowAccent),)
    ,
    ),
    )
    ],
    ),
          SizedBox(height: 80,),
          RadioListTile(
            selectedTileColor: Colors.yellowAccent,
            activeColor: Colors.yellowAccent,
            title: Text("Beginner",style: TextStyle(color: Colors.white,fontSize: 40),),
            value: "Beginner",
            groupValue: level,
            onChanged: (value){
              setState(() {
                level = value.toString();
              });
            },
          ),
          SizedBox(height: 40,),
          RadioListTile(
            selectedTileColor: Colors.yellowAccent,
            activeColor: Colors.yellowAccent,
            title: Text("Intermediate",style: TextStyle(color: Colors.white,fontSize: 40),),
            value: "Intermediate",
            groupValue: level,
            onChanged: (value){
              setState(() {
                level = value.toString();
              });
            },
          ),
          SizedBox(height: 40,),
          RadioListTile(
            selectedTileColor: Colors.yellowAccent,
            activeColor: Colors.yellowAccent,
            title: Text("Pro",style: TextStyle(color: Colors.white,fontSize: 40),),
            value: "Pro",
            groupValue: level,
            onChanged: (value){
              setState(() {
                level = value.toString();
              });
            },
          ),
          SizedBox(height: 80,),

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
                  child: Text("Next",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                ),
              )
            ],
          )
          // RadioButtonGroup(
          //     activeColor: Colors.green,
          //     labels: <String>["Beginner", "Intermediate","Pro"],
          //     labelStyle: TextStyle(color: Colors.white,fontSize: 50),
          //     orientation: GroupedButtonsOrientation.VERTICAL,
          //
          //     onSelected: (String selected) {
          //       setState(() {
          //         // gender = selected;
          //       });
          //     })
    ]));
  }
}