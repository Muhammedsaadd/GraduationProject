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
                    
                    Text("Coach Youssef Amr",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                    Container(
                        margin: EdgeInsets.symmetric(vertical: 12),
                        width: 100,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(29),
                          child: SizedBox(height: 40, child:  ElevatedButton(
                            // padding: EdgeInsets.symmetric(vertical: 18,horizontal: 38),
                            // color: Colors.deepOrange,
                            onPressed: () async {

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
              SizedBox(
                width: 20,
              ),Container(
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

                    Text("Coach Youssef Amr",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                    Container(
                        margin: EdgeInsets.symmetric(vertical: 12),
                        width: 100,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(29),
                          child: SizedBox(height: 40, child:  ElevatedButton(
                            // padding: EdgeInsets.symmetric(vertical: 18,horizontal: 38),
                            // color: Colors.deepOrange,
                            onPressed: () async {

                            },
                            child: Text(
                              'Info',
                              style:
                              TextStyle(color: Colors.black, fontSize: 18),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.yellowAccent,
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
              SizedBox(
                width: 20,
              ),Container(
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

                    Text("Coach Youssef Amr",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                    Container(
                        margin: EdgeInsets.symmetric(vertical: 12),
                        width: 100,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(29),
                          child: SizedBox(height: 40, child:  ElevatedButton(
                            // padding: EdgeInsets.symmetric(vertical: 18,horizontal: 38),
                            // color: Colors.deepOrange,
                            onPressed: () async {

                            },
                            child: Text(
                              'Info',
                              style:
                              TextStyle(color: Colors.black, fontSize: 18),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.yellowAccent,
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
              SizedBox(
                width: 20,
              ),



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