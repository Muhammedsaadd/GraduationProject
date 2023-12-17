import 'package:flutter/material.dart';

class MainMenu extends StatefulWidget{
  var data;

  MainMenu(this.data);

  @override


@override
State<MainMenu> createState() => _MainMenuState(data);
}
class _MainMenuState extends State<MainMenu> {
  var data;
  String Email = '';
  String Password = '';
  String fullName = '';
  String mobileNumber = '';
  String gender = '';
  String dateOfBirth = '';
  setData(){
    Email = data[0]["Email"];
    fullName = data[0]["Fname"] +" " + data[0]["Lname"]  ;
    mobileNumber = data[0]["MobileNo"];
    dateOfBirth = data[0]["BirthDate"];
    Password = data[0]["Password"];
  }
// Function to calculate sleep hours
  int calculateHoursSlept(DateTime startTime, DateTime endTime) {
    // Make sure the end time is after the start time
    if (endTime.isBefore(startTime)) {
      throw ArgumentError("End time must be after start time");
    }

    // Calculate the difference in hours
    int hours = endTime.difference(startTime).inHours;

    return hours;
  }
  int calculateDaysDifference(DateTime startDate, DateTime endDate) {
    // Calculate the difference in days
    int days = endDate.difference(startDate).inDays;

    return days;
  }


  _MainMenuState(this.data);

  @override
Widget build(BuildContext context) {
 setData();
  return  Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 50,),
              Row(
                children: [
                  SizedBox(width: 10 ),
                  Text("Hi ${fullName}",style: TextStyle(color: Colors.yellowAccent , fontSize: 30),)
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [

                  Center(

                    child:Container(
                        width: 390,
                        height: 200,

                        child:Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Image.network("https://i.ytimg.com/vi/gey73xiS8F4/maxresdefault.jpg"),
                        )

                    ),)


                ],
              ),
              SizedBox(height: 15,),
              Row(
                children: [
                  Container(
                    height: 75,
                    width: 390,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey

                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 20,),
                        Text("Today's Target",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                        SizedBox(width: 110,),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),

                          child: SizedBox(height:40,child:ElevatedButton(onPressed: (){}, child: Text("Check",style: TextStyle(color: Colors.black),),style:ElevatedButton.styleFrom(backgroundColor: Colors.yellowAccent)) ,),)


                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  SizedBox(width: 20,),
                  Text("Activity Status",style: TextStyle(fontSize: 30,color: Colors.yellowAccent,fontWeight: FontWeight.bold),),
                ],
              ),
              SizedBox(height: 10,),


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
              SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(width: 10,),
                  Text("Workout Progress",style: TextStyle(fontSize: 30,color: Colors.yellowAccent,fontWeight: FontWeight.bold),)
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Container(
                    width: 390,
                    height: 128,
                    // decoration: BoxDecoration(
                    //   borderRadius: BorderRadius.circular(60)
                    // ),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)
                      ),
                      child: Image.network("https://i.ytimg.com/vi/gey73xiS8F4/maxresdefault.jpg"),
                    ),)
                ],
              ),
                SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  Container(
                      width: 190,
                      height: 170,

                      child:Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Image.network("https://i.ytimg.com/vi/gey73xiS8F4/maxresdefault.jpg"),
                      )

                  ),

                  Container(
                      width: 190,
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
                  Text("Trainer",style: TextStyle(color: Colors.yellowAccent,fontSize: 25,fontWeight: FontWeight.bold),),
                  Text("Doctor",style: TextStyle(color: Colors.yellowAccent,fontSize: 25,fontWeight: FontWeight.bold)),


                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Container(
                    width: 390,
                    height: 140,
                    // decoration: BoxDecoration(
                    //   borderRadius: BorderRadius.circular(60)
                    // ),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(70)
                      ),
                      child: Image.network("https://i.ytimg.com/vi/gey73xiS8F4/maxresdefault.jpg"),
                    ),)
                ],
              ),



            ],
          ),
        )


  );
}
}