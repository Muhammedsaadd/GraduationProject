import 'package:flutter/material.dart';
import 'HomePage.dart';
void main() {
  runApp(MaterialApp(home: Activity_Level()));
}

class Activity_Level extends StatefulWidget {
  @override
  Activity_Level({super.key});

  @override
  State<Activity_Level> createState() => _MainMenuState();
}

class _MainMenuState extends State<Activity_Level> {
  String level = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(height: 100),
          Row(
            children: [
              Container(
                width: 392.5,
                height: 50,
                child: Center(
                  child: Text(
                    "What is your activity level ?",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.yellowAccent),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 80),
          RadioListTile(
            selectedTileColor: Colors.yellowAccent,
            activeColor: Colors.yellowAccent,
            title: Text(
              "Beginner",
              style: TextStyle(color: Colors.white, fontSize: 40),
            ),
            value: "Beginner",
            groupValue: level,
            onChanged: (value) {
              setState(() {
                level = value.toString();
              });
            },
          ),
          SizedBox(height: 40),
          RadioListTile(
            selectedTileColor: Colors.yellowAccent,
            activeColor: Colors.yellowAccent,
            title: Text(
              "Intermediate",
              style: TextStyle(color: Colors.white, fontSize: 40),
            ),
            value: "Intermediate",
            groupValue: level,
            onChanged: (value) {
              setState(() {
                level = value.toString();
              });
            },
          ),
          SizedBox(height: 40),
          RadioListTile(
            selectedTileColor: Colors.yellowAccent,
            activeColor: Colors.yellowAccent,
            title: Text(
              "Pro",
              style: TextStyle(color: Colors.white, fontSize: 40),
            ),
            value: "Pro",
            groupValue: level,
            onChanged: (value) {
              setState(() {
                level = value.toString();
              });
            },
          ),
          SizedBox(height: 80),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.yellowAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text(
                  "Next",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
