import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';
import 'package:group_radio_button/group_radio_button.dart';
import 'package:grouped_buttons/grouped_buttons.dart';
import 'Payment.dart';

void main() {
  runApp(MaterialApp(home: ChoosePackage()));
}

class ChoosePackage extends StatefulWidget {
  @override
  ChoosePackage({super.key});

  @override
  State<ChoosePackage> createState() => _MainMenuState();
}

class _MainMenuState extends State<ChoosePackage> {
  int index = 0;
  String isSelected = "";
  String level = "";

  @override
  Widget build(BuildContext context) {
    // Use MediaQuery to get the screen size
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(children: [
        SizedBox(height: 30),
        Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.chevron_left,
              size: 40,
              color: Colors.yellowAccent,
            ),
          ],
        ),
        SizedBox(
          height: 45,
        ),
        Row(children: [
          SizedBox(
            width: 40,
          ),
          Text(
            "Choose Your Package",
            style: TextStyle(
                fontSize: 33,
                fontWeight: FontWeight.bold,
                color: Colors.yellowAccent),
          )
        ]),
        SizedBox(
          height: 80,
        ),
        RadioListTile(
          selectedTileColor: Colors.yellowAccent,
          activeColor: Colors.yellowAccent,
          title: Text(
            "1 Month",
            style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          value: "1 Month",
          groupValue: level,
          onChanged: (value) {
            setState(() {
              level = value.toString();
            });
          },
        ),
        SizedBox(
          height: 20,
        ),
        RadioListTile(
          selectedTileColor: Colors.yellowAccent,
          activeColor: Colors.yellowAccent,
          title: Text(
            "3 Months",
            style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          value: "3 Months",
          groupValue: level,
          onChanged: (value) {
            setState(() {
              level = value.toString();
            });
          },
        ),
        SizedBox(
          height: 20,
        ),
        RadioListTile(
          selectedTileColor: Colors.yellowAccent,
          activeColor: Colors.yellowAccent,
          title: Text(
            "6 Months",
            style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          value: "6 Months",
          groupValue: level,
          onChanged: (value) {
            setState(() {
              level = value.toString();
            });
          },
        ),
        SizedBox(
          height: 20,
        ),
        RadioListTile(
          selectedTileColor: Colors.yellowAccent,
          activeColor: Colors.yellowAccent,
          title: Text(
            "1 Year",
            style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          value: "1 Year",
          groupValue: level,
          onChanged: (value) {
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
              width: screenWidth * 0.4, // Use a percentage of the screen width
            ),
            Container(
              width: screenWidth * 0.3, // Use a percentage of the screen width
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.yellowAccent,
              ),
              child: Center(
                child: SizedBox(
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Payment()),
                      );
                    },
                    child: Text(
                      "Next",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.yellowAccent,
                    ),
                  ),
                ),
              ),
            ),
          ],
        )
      ]),
    );
  }
}
