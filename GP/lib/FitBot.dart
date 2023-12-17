import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login/Signup',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false, // Remove debug banner
      home: LoginSignupScreen(),
    );
  }
}

class LoginSignupScreen extends StatefulWidget {
  @override
  _LoginSignupScreenState createState() => _LoginSignupScreenState();
}

class _LoginSignupScreenState extends State<LoginSignupScreen> {
  double xAlign = loginAlign;
  late Color loginColor;
  late Color signUpColor;
  late Color loginTextColor;
  late Color signUpTextColor;

  @override
  void initState() {
    super.initState();
    loginColor = normalColor;
    signUpColor = normalColor;
    loginTextColor = normalTextColor;
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
                color: Colors.yellowAccent.shade400,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 40),
            Container(
              width: 300.0,
              height: 60.0,
              decoration: BoxDecoration(
                color: Colors.grey,
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
                        color: Colors.yellowAccent.shade400, // Yellow color
                        borderRadius: BorderRadius.all(
                          Radius.circular(50.0),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        xAlign = loginAlign;
                        loginColor = Colors.lightGreenAccent.shade400; // Yellow color for selected state
                        signUpColor = normalColor;
                        loginTextColor = Colors.black; // White text color for login
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
                          'Login',
                          style: TextStyle(
                            color: loginTextColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        xAlign = signInAlign;
                        signUpColor = Colors.lightGreenAccent.shade400; // Yellow color for selected state
                        loginColor = normalColor;
                        signUpTextColor = Colors.white; // White text color for signup
                        loginTextColor = normalTextColor;
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
const double signInAlign = 1;
const Color normalColor = Colors.black54;
const Color normalTextColor = Colors.white;