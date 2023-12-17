import 'package:flutter/material.dart';
import 'ChooseCoach.dart';
void main() {
  runApp(MaterialApp(home: HomePage(),));
}

class HomePage extends StatefulWidget {
  @override
  HomePage({super.key});

  @override
  State<HomePage> createState() => _MainMenuState();
}

class _MainMenuState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    String x = "Saad";
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Row(
              children: [
                SizedBox(width: 10),
                Text("Hi ${x}", style: TextStyle(color: Color(0xFFB6FF00), fontSize: 30),)
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Center(
                  child: GestureDetector(
                    onTap: () {
                      // Add the action you want to perform when the image is clicked
                      print("Image clicked");
                    },
                    child: Container(
                        width: 390,
                        height: 200,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Image.network("https://i.ytimg.com/vi/gey73xiS8F4/maxresdefault.jpg"),
                        )
                    ),
                  ),
                )
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
                      Text("Today's Target", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                      SizedBox(width: 110,),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: SizedBox(
                          height: 40,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text("Check"),
                            style: ElevatedButton.styleFrom(backgroundColor: Color(0xFFB6FF00)),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(width: 20,),
                Text("Activity Status", style: TextStyle(fontSize: 30, color: Color(0xFFB6FF00), fontWeight: FontWeight.bold),),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    // Add the action you want to perform when the "Trainer" button is clicked
                    print("Trainer clicked");
                  },
                  child: Container(
                      width: 170,
                      height: 170,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Image.network("https://i.ytimg.com/vi/gey73xiS8F4/maxresdefault.jpg"),
                      )
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Add the action you want to perform when the "Doctor" button is clicked
                    print("Doctor clicked");
                  },
                  child: Container(
                      width: 170,
                      height: 170,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Image.network("https://i.ytimg.com/vi/gey73xiS8F4/maxresdefault.jpg"),
                      )
                  ),
                )
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 10,),
                Text("Workout Progress", style: TextStyle(fontSize: 30, color: Color(0xFFB6FF00), fontWeight: FontWeight.bold),)
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Container(
                  width: 390,
                  height: 128,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: Image.network("https://i.ytimg.com/vi/gey73xiS8F4/maxresdefault.jpg"),
                  ),
                )
              ],
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ChooseCoach()),
                    );
                  },
                  child: Container(
                      width: 190,
                      height: 170,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Image.network("https://i.ytimg.com/vi/gey73xiS8F4/maxresdefault.jpg"),
                      )
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Add the action you want to perform when the "Doctor" button is clicked
                    print("Doctor clicked");
                  },
                  child: Container(
                      width: 190,
                      height: 170,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Image.network("https://i.ytimg.com/vi/gey73xiS8F4/maxresdefault.jpg"),
                      )
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Trainer",
                  style: TextStyle(color: Color(0xFFB6FF00), fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Text(
                    "Doctor",
                    style: TextStyle(color: Color(0xFFB6FF00), fontSize: 25, fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Container(
                  width: 390,
                  height: 140,
                  child: GestureDetector(
                    onTap: () {
                      // Add the action you want to perform when the image is clicked
                      print("Image clicked");
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(70)
                      ),
                      child: Image.network("https://i.ytimg.com/vi/gey73xiS8F4/maxresdefault.jpg"),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
