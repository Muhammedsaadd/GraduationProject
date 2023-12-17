import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PaymentPage(),
    );
  }
}

class PaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Payment',
          style: TextStyle(color: Color(0xFFB6FF00)), // Set the font color
        ),
        backgroundColor: Colors.transparent, // Set the background to transparent
        elevation: 0, // Remove the elevation
      ),
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MergedButtons(),
          CardNumberTextField('Card Number'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CVVTextField(),
              ValidUntilTextField(),
            ],
          ),
          SizedBox(height: 8), // Adjusted space between text fields
          CardHolderNameTextField(),
          PayButton(), // Added the Pay button bar
        ],
      ),
    );
  }
}

class MergedButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        PaymentOptionButton('Debit Card', Colors.blue),
        PaymentOptionButton('Credit Card', Colors.green),
        PaymentOptionButton('PayPal', Colors.orange),
      ],
    );
  }
}

class PaymentOptionButton extends StatelessWidget {
  final String label;
  final Color color;

  PaymentOptionButton(this.label, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: ElevatedButton(
        onPressed: () {
          // Add functionality here
        },
        style: ElevatedButton.styleFrom(
          primary: color,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
          child: Text(
            label,
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}

class CardNumberTextField extends StatelessWidget {
  final String labelText;

  CardNumberTextField(this.labelText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelText,
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 8),
          TextFormField(
            decoration: InputDecoration(
              fillColor: Colors.grey[700],
              filled: true,
              hintText: 'Enter $labelText',
              hintStyle: TextStyle(color: Colors.grey),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0), // Adjust the radius as needed
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CVVTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10 * 16.0, // Set width based on the desired size (4 * font size)
      height: 12 * 16.0, // Set height based on the desired size (6 * font size)
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'CVV',
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 8),
          TextFormField(
            style: TextStyle(fontSize: 16), // Set font size
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
              fillColor: Colors.grey[700],
              filled: true,
              hintText: 'Enter CVV',
              hintStyle: TextStyle(color: Colors.grey),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0), // Adjust the radius as needed
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ValidUntilTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10 * 16.0, // Set width based on the desired size (4 * font size)
      height: 12 * 16.0, // Set height based on the desired size (6 * font size)
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            ' Valid Until',
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 8),
          TextFormField(
            style: TextStyle(fontSize: 16), // Set font size
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
              fillColor: Colors.grey[700],
              filled: true,
              hintText: 'MM/YYYY',
              hintStyle: TextStyle(color: Colors.grey),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0), // Adjust the radius as needed
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CardHolderNameTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16, right: 16, bottom: 20),
      child:
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Card Holder Name',
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 4), // Adjusted space between text and input field
          TextFormField(
            decoration: InputDecoration(
              fillColor: Colors.grey[700],
              filled: true,
              hintText: 'Enter Card Holder Name',
              hintStyle: TextStyle(color: Colors.grey),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0), // Adjust the radius as needed
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PayButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFB6FF00), // Set the background color
        borderRadius: BorderRadius.circular(20.0), // Set border radius
      ),
      width: double.infinity, // Make it take the full width of the screen
      padding: EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Pay 30000',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black, // Set text color
            ),
          ),
          IconButton(
            icon: Icon(Icons.arrow_forward_ios_rounded),
            onPressed: () {
              // Add functionality to go to the next page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NextPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Next Page'),
      ),
      body: Center(
        child: Text('This is the next page.'),
      ),
    );
  }
}