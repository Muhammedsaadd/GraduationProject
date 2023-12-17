import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black, // Set background color to black
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 25,),
              Text(
                'Achievements',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFB6FF00), // Use #B6FF00 green color
                ),
              ),
              SizedBox(height: 16.0),
              _buildWorkBeforeBox(),
              SizedBox(height: 16.0),
              _buildUploadBox(),
              Spacer(), // Spacer to push the next button to the bottom
              Align(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                  onPressed: () {
                    // Handle the next button press
                    // You can implement the logic for the next action here
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFFB6FF00), // Set button color to green
                  ),
                  child: Text(
                    'Next',
                    style: TextStyle(
                      color: Colors.black, // Set text color to black
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildWorkBeforeBox() {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.grey, // Set background color to grey
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Where did you work before',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.0),
          TextField(
            decoration: InputDecoration(
              hintText: 'Enter your previous workplace...',
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildUploadBox() {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.grey, // Set background color to grey
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Upload Client\'s Transformations',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16.0),
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.cloud_upload),
                onPressed: () {
                  // Handle the upload button press
                  // You can implement the logic to save the achievement here
                },
              ),
              SizedBox(width: 8.0),
              Text('Upload'),
            ],
          ),
        ],
      ),
    );
  }
}