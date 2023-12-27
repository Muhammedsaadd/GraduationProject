import 'dart:convert';
// import 'package:fluttertoast/fluttertoast.dart';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:untitled2/main1.dart';
void main() {
  runApp(Sign_In());
}
class Sign_In extends StatefulWidget {
  const Sign_In({Key? key}) : super(key: key);
  @override
  State<Sign_In> createState() => _Sign_InState();
}

class _Sign_InState extends State<Sign_In> {
  String Email = '';
  String Password = '';
  String fullName = '';
  String mobileNumber = '';
  String gender = '';
  String dateOfBirth = '';

  var data;

  bool checkCondition = true;
  TextEditingController mobile = new TextEditingController();
  TextEditingController pass = new TextEditingController();


  Future getUserData(String mobile) async{
    var url =  Uri.parse(
        'https://unmingled-dates.000webhostapp.com/getUserData.php');

    var response = await http.post(url, body: {
      "username": mobile,
    }
    );

    // print(json.decode(response.body));
    var data1 = await json.decode(response.body);
    getData(mobile, data1);
    print(data1);
    data=data1;

    print("mamaos ${data1.runtimeType}");
    Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  MainMenu(data)
          ));
    return data1;

    // return json.decode(response.body);
  }
  getData(String mobile,var data)  {
    print("data23 $data");
    Email = data[0]["Email"];
    fullName = data[0]["Fname"];
    mobileNumber = data[0]["MobileNo"];
    dateOfBirth = data[0]["BirthDate"];
    Password = data[0]["Password"];


  }


  Future Login() async {
    var response = await http.post(Uri.parse('https://unmingled-dates.000webhostapp.com/login.php'), body: {
      "username": mobile.text,
      "pass": pass.text,
    });
    print("object ${mobile.text}");
    print("object ${pass.text}");
    var data = json.decode (response.body);
    print("data : $data");
    print("pressed successful");
    if (data.toString() == "Success") {
      getUserData(mobile.text);
      print("Login Success");
      // await Fluttertoast.showToast (
      //   msg: 'Login Successful',
      //   backgroundColor: Colors.yellowAccent,
      //   textColor: Colors.white,
      //   toastLength: Toast.LENGTH_SHORT,
      // );

    } else {
      // Fluttertoast.showToast (
      //   backgroundColor: Colors.red,
      //   textColor: Colors.white,
      //   msg: 'Incorrect Username or Password',
      //   toastLength: Toast.LENGTH_SHORT,
      // );
    }
  }


  //final Widget child;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Builder(builder: (context) =>Scaffold(
            backgroundColor: Colors.black,
            body: Padding(
                padding: EdgeInsets.all(20),
                child: ListView(
                  children: <Widget>[
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back_ios),
                      alignment: Alignment.topLeft,
                    ),
                    // Container(
                    //     alignment: Alignment.center,
                    //     padding: EdgeInsets.all(10),
                    //     child: Text(
                    //       'Sign In',
                    //       style: TextStyle(
                    //           color: Colors.green,
                    //           fontWeight: FontWeight.bold,
                    //           fontSize: 40),
                    //     )),
                    Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                blurRadius: 6,
                                offset: Offset(0, 2)),
                          ]),
                      padding: EdgeInsets.all(1),
                      child: TextField(
                        cursorColor: Colors.green,
                        onChanged: (value) {
                          setState(() {
                            Email = value;
                          });
                          // getData();
                        },
                        controller: mobile,
                        decoration: InputDecoration(
                          focusedBorder:UnderlineInputBorder(borderSide: BorderSide(color: Colors.green)),
                          focusColor: Colors.green,
                          labelStyle: TextStyle(color: Colors.green),
                          labelText: 'Email',
                          prefixIcon: Icon(Icons.account_circle,color: Colors.green,),
                        ),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                blurRadius: 6,
                                offset: Offset(0, 2)),
                          ]),
                      padding: EdgeInsets.all(1),
                      child: TextField(
                        obscureText: true,
                        cursorColor: Colors.green,
                        onChanged: (value) {
                          setState(() {
                            Password = value;
                            // getData();
                          });
                        },
                        controller: pass,
                        decoration: InputDecoration(
                            focusColor: Colors.green,
                            labelStyle: TextStyle(color: Colors.green),
                            focusedBorder:UnderlineInputBorder(borderSide: BorderSide(color: Colors.green)),

                            labelText: 'Password',

                            prefixIcon: Icon(Icons.password,color: Colors.green,)
                        ),
                      ),
                    ),

                    SizedBox(height: 30,),
                    Container(
                        margin: EdgeInsets.symmetric(vertical: 12),
                        width: 100,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(29),
                          child: SizedBox(height: 50, child:  ElevatedButton(
                            // padding: EdgeInsets.symmetric(vertical: 18,horizontal: 38),
                            // color: Colors.deepOrange,
                            onPressed: ()  {
                              Login();
                            },
                            child: Text(
                              'Sign In',
                              style:
                              TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.yellowAccent,
                            ),
                          )),
                        )),
                    // Row(
                    //   children: <Widget>[
                    //     const Text('Does not have account?'),
                    //     TextButton(
                    //       child: const Text(
                    //         'Sign Up',
                    //         style: TextStyle(
                    //             fontSize: 20, color: Colors.green),
                    //       ),
                    //       onPressed: () {
                    //         // Navigator.push(
                    //         //     context,
                    //         //     MaterialPageRoute(
                    //         //         builder: (context) => Sign_Up()));
                    //       },
                    //     )
                    //   ],
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    // ),
                  ],
                ))

        )));
  }
}