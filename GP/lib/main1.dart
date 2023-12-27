import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MainMenu());
}
class MainMenu extends StatefulWidget{
  var data;

  // MainMenu(this.data);

  @override


@override
State<MainMenu> createState() => _MainMenuState(/*data*/);
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
  double calculatePercentage(DateTime startDate, DateTime endDate, DateTime currentDate) {
    // Ensure that the current date is within the range of start date and end date
    if (currentDate.isBefore(startDate)) {
      return 0.0; // Start date is in the future
    } else if (currentDate.isAfter(endDate)) {
      return 100.0; // End date is in the past
    } else {
      // Calculate the percentage of time elapsed
      Duration totalDuration = endDate.difference(startDate);
      Duration elapsedDuration = currentDate.difference(startDate);

      double percentage = (elapsedDuration.inMilliseconds / totalDuration.inMilliseconds) * 100;
      return percentage;
    }
  }
// Function to calculate sleep hours
  Duration calculateTimeDifference(DateTime currentTime, DateTime targetTime) {
    // Calculate the difference between two DateTime objects
    Duration timeDifference = targetTime.difference(currentTime);

    return timeDifference;
  }
  int calculateDaysDifference(DateTime startDate, DateTime endDate) {
    // Calculate the difference in days
    int days = endDate.difference(startDate).inDays;

    return days;
  }



  DateTime addMonthsToDate(DateTime date, int monthsToAdd) {
    return date.add(Duration(days: 30 * monthsToAdd));
  }

// Function to format a date as a string
  String formatDate(DateTime date) {
    return DateFormat('yyyy-MM-dd').format(date);
  }



  // _MainMenuState(this.data);

  @override
Widget build(BuildContext context) {
    DateTime currentDate1 = DateTime(2023, 12, 28, 12, 0, 0);
    DateTime targetDate = DateTime(2023, 12, 29, 12, 0, 0); // Target date: January 1, 2023, 12:00 PM
    Duration difference = calculateTimeDifference(currentDate1, targetDate);

    DateTime today = DateTime.now();
    int numberOfMonths = 3;
    // DateTime endDate = addMonthsToDate(today, numberOfMonths);

    // Format the dates for display
    // String formattedToday = formatDate(today);
    // String formattedEndDate = formatDate(endDate);
    DateTime startDate = DateTime(2023, 6, 30);
  DateTime endDate = DateTime(2024, 3, 28);
  DateTime currentDate = DateTime.now();
    double percentage = calculatePercentage(startDate, endDate, currentDate);
    // setData();
  return MaterialApp(home : Scaffold(
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
                      color: Colors.grey,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),

                      ),
                      // child:
                      child:  CircularPercentIndicator(
                        radius: 60.0,
                        lineWidth: 10.0,
                        percent: percentage/100,
                        center: new Icon(Icons.calendar_month,size: 50,color: Colors.yellowAccent),
                        progressColor: Colors.yellowAccent,
                      ),
                    )

                ),

                Container(
                    width: 170,
                    height: 170,

                    child:Card(
                      color: Colors.grey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),

                      ),
                      // child:
                      child:  Center(
                        child: Text("${difference.inHours}:${difference.inMinutes % 60}:${difference.inSeconds % 60}",style: TextStyle(color: Colors.yellowAccent,fontSize: 30),),
                      )
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


  )
  )
      ;
}
}