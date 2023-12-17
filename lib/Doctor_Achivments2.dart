import 'package:flutter/material.dart';

void main() {
  runApp(Doctor_Achivments2());
}

class Doctor_Achivments2 extends StatelessWidget {
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
              Text(
                'Transformations',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Set text color
                ),
              ),
              SizedBox(height: 10),
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
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
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
        color: Color(0xFF4D4D4D), // Set background color to grey
        border: Border.all(color: Color(0xFF4D4D4D)),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Where did you work before',
            style: TextStyle(
              color: Colors.white,
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
            'Upload clients transformations here',
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.white, // Set text color to white
            ),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              // Add your logic for uploading transformations
              print('Uploading transformations...');
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
    );
  }
}
