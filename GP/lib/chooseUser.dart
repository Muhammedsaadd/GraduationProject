import 'package:flutter/material.dart';

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
                  child:Text("Sign Up",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 45,color: Color(0xFFB6FF00)),)
                  ,
                ),
              )
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [

              Container(
                width: 392.5,
                height: 50,
                child: Center(
                  child:Text("As",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,color: Color(0xFFB6FF00),)
                  ,
                ),
              )
          )],
          ),
          GestureDetector(
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(360),
                  color: Colors.white

              ),
              child:Center(child:  Text("Doctor",style: TextStyle(
                  color: Colors.black,
                  fontSize: 45,fontWeight: FontWeight.bold),),),

            ),onTap: (){
              print("1212123");
          },
          ),
          SizedBox(height: 25,),
         GestureDetector(
           child:  Container(
             width: 150,
             height: 150,
             decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(360),
                 color: Colors.white

             ),
             child:Center(child:  Text("Trainer",style: TextStyle(
                 color: Colors.black,
                 fontSize: 44,fontWeight: FontWeight.bold),),),

           ),onTap: (){
             print("3251253");
         },
         ),SizedBox(height: 25,),
          GestureDetector(child: Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(360),
              color: Colors.white,

            ),
            child:Center(child:  Text("Client",style: TextStyle(
                color: Colors.black,
                fontSize: 45,fontWeight: FontWeight.bold),),),

          ),onTap: (){
            print("1323512");
          },),


        ],
      ),
    );

  }
}