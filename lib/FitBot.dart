import 'package:flutter/material.dart';
import 'Sign_In.dart';
import 'Sign_As.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SignIn/Signup',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false, // Remove debug banner
      home: SignInSignUpScreen(),
    );
  }
}

class SignInSignUpScreen extends StatefulWidget {
  @override
  _SignInSignUpScreenState createState() => _SignInSignUpScreenState();
}

class _SignInSignUpScreenState extends State<SignInSignUpScreen> {
  double xAlign = loginAlign;
  late Color SignInColor;
  late Color signUpColor;
  late Color SignInTextColor;
  late Color signUpTextColor;

  @override
  void initState() {
    super.initState();
    SignInColor = normalColor;
    signUpColor = normalColor;
    SignInTextColor = normalTextColor;
    signUpTextColor = normalTextColor;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 200, // Fixed width for the logo
              height: 200, // You can adjust the height if needed
              // Your app logo widget here
              // Replace AssetImage with your image path
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/logo.jpg'), // Replace with your image path
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'FitBot',
              style: TextStyle(
                color: Color(0xFFB6FF00),
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 40),
            Container(
              width: 300.0,
              height: 60.0,
              decoration: BoxDecoration(
                color: Color(0xFF4D4D4D),
                borderRadius: BorderRadius.all(
                  Radius.circular(50.0),
                ),
              ),
              child: Stack(
                children: [
                  AnimatedAlign(
                    alignment: Alignment(xAlign, 0),
                    duration: Duration(milliseconds: 300),
                    child: Container(
                      width: 150.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFB6FF00), // Yellow color
                        borderRadius: BorderRadius.all(
                          Radius.circular(50.0),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Sign_In()),
                      );
                      setState(() {
                        xAlign = loginAlign;
                        SignInColor = Color(0xFFB6FF00); // Yellow color for selected state
                        signUpColor = normalColor;
                        SignInTextColor = Colors.black; // White text color for login
                        signUpTextColor = normalTextColor;
                        // Add login functionality
                      });
                    },
                    child: Align(
                      alignment: Alignment(-1, 0),
                      child: Container(
                        width: 150.0,
                        color: Colors.transparent,
                        alignment: Alignment.center,
                        child: Text(
                          'SignIn',
                          style: TextStyle(
                            color: SignInTextColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Sign_As()),
                      );
                      setState(() {
                        xAlign = signUpAlign;
                        signUpColor =Color(0xFFB6FF00); // Yellow color for selected state
                        SignInColor = normalColor;
                        signUpTextColor = Colors.white; // White text color for signup
                        SignInTextColor = normalTextColor;
                        // Add signup functionality
                      });
                    },
                    child: Align(
                      alignment: Alignment(1, 0),
                      child: Container(
                        width: 150.0,
                        color: Colors.transparent,
                        alignment: Alignment.center,
                        child: Text(
                          'Signup',
                          style: TextStyle(
                            color: signUpTextColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

const double loginAlign = -1;
const double signUpAlign = 1;
const Color normalColor = Colors.black54;
const Color normalTextColor = Colors.white;