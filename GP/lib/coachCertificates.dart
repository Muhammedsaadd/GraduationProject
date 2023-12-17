import 'package:flutter/material.dart';

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
SizedBox(height: 35),
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
'Certificates',
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
'Download your certificates here',
style: TextStyle(
fontSize: 16.0,
color: Colors.white, // Set text color to white
),
),
SizedBox(height: 10),
ElevatedButton(
onPressed: () {
// Add your logic for downloading certificates
print('Downloading certificates...');
},
child: Text('Download'),
),
],
),
),

SizedBox(height: 20),
Text(
'Medals',
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
hintText: 'Enter your medal data',
hintStyle: TextStyle(color: Colors.white), // Set hint text color
border: InputBorder.none,
),
),
),
SizedBox(height: 20),
Text(
'Working in a gym?',
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
TextButton(
onPressed: () {
setState(() {
isWorkingInGym = true;
});
},
child: Text(
'Yes',
style: TextStyle(color: Colors.white),
),
),
SizedBox(width: 10),
TextButton(
onPressed: () {
setState(() {
isWorkingInGym = false;
});
},
child: Text(
'No',
style: TextStyle(color: Colors.white),
),
),
],
),
],
),
);
}
}