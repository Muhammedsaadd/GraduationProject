import 'package:flutter/material.dart';
import 'Doctor_Achivments2.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black, // Set the background color
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isWorkingInGym = false;
  TextEditingController medalsController = TextEditingController();

  @override
  void dispose() {
    medalsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Align to the left
        children: [
          SizedBox(height: 20),
          Text(
            'Achievements',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Color(0xFFB6FF00), // Set text color to green
            ),
          ),
          SizedBox(height: 20),
          Text(
            'certificates',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.white, // Set text color
            ),
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xFF4D4D4D), // Set border color to 4D4D4DFF
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(10.0),
              color: Color(0xFF4D4D4D), // Set container color to 4D4D4DFF
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // Align to the left
              children: [
                Text(
                  'Upload your certificates here',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white, // Set text color to white
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    // Add your logic for downloading certificates
                    print('Uploading certificates...');
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFFB6FF00), // Set button color to green
                  ),
                  child: Text(
                    'Upload',
                    style: TextStyle(
                      color: Colors.black, // Set text color to black
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 20),
          Text(
            'Experience',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.white, // Set text color
            ),
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xFF4D4D4D), // Set border color to 4D4D4DFF
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(10.0),
              color: Color(0xFF4D4D4D), // Set container color to 4D4D4DFF
            ),
            child: TextField(
              controller: medalsController,
              style: TextStyle(color: Colors.white), // Set text color to white
              decoration: InputDecoration(
                hintText: 'Enter your experience',
                hintStyle: TextStyle(color: Colors.white), // Set hint text color
                border: InputBorder.none,
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Did you work before?',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.white, // Set text color
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start, // Align to the left
            children: [
              // "Yes" Button
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    isWorkingInGym = true;
                  });
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFB6FF00), // Set button color to green
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      bottomLeft: Radius.circular(30.0),
                    ),
                  ),
                ),
                child: Text(
                  'Yes',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              SizedBox(width: 10),
              // "No" Button
              ElevatedButton(
                onPressed: () {


                  setState(() {
                    isWorkingInGym = false;
                  });
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFB6FF00), // Set button color to green
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0),
                    ),
                  ),
                ),
                child: Text(
                  'No',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: Container(
        alignment: Alignment.bottomRight,
        margin: EdgeInsets.all(16.0),
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Doctor_Achivments2()),
            );

          },
          style: TextButton.styleFrom(
            backgroundColor: Color(0xFFB6FF00),
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
          child: Text(
            'Next',
            style: TextStyle(
              color: Colors.black, // Set text color to black
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
