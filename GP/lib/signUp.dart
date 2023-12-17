import 'dart:convert';
// import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';
// import 'package:grouped_buttons/grouped_buttons.dart';
// import 'package:recycling/MainMenu.dart';
// import 'package:recycling/SignIn.dart';
import 'package:http/http.dart' as http;
import 'package:untitled2/main1.dart';
// import 'sSignInPage.dart';
// import 'package:flutter_pw_validator/flutter_pw_validator.dart';
// import 'package:regexed_validator/regexed_validator.dart';
void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: Sign_Up(),));
}


class Sign_Up extends StatefulWidget {
  const Sign_Up({Key? key}) : super(key: key);
  @override
  State<Sign_Up> createState() => _Sign_UpState();
}

class _Sign_UpState extends State<Sign_Up> {
  var Email;
  var Password;
  var fullName;
  var mobileNumber;
  var gender;
  var dateOfBirth;
  String totalAmount = '';
  var user_points;
  var items_recycled;
  var data;
  bool buttonEnabled = false;

  TextEditingController name = new TextEditingController();
  TextEditingController lname = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController mobile = new TextEditingController();
  TextEditingController pass = new TextEditingController();
  bool visible = false;
  enableButton(){
    buttonEnabled = true;
  }


  Future getUserData(String mobile) async{
    var url =  Uri.parse(
        'https://unmingled-dates.000webhostapp.com/getUserData.php');

    var response = await http.post(url, body: {
      "username": mobile,
    }
    );

    var data1 = await json.decode(response.body);

      return data1;


  }

  Future SendData() async {
    var url =
    Uri.parse('https://unmingled-dates.000webhostapp.com/register.php');
    var data1 = {
      "name": name.text,
      "lname": lname.text,
      "email": email.text,
      "mobile": mobile.text,
      "password": pass.text,

    };
    final response = await http.post(Uri.parse('https://unmingled-dates.000webhostapp.com/register.php'), body: {
      "name": name.text,
      "lname": lname.text,
      "email": email.text,
      "mobile": mobile.text,
      "password": pass.text,

    });
    try {
      var data = json.decode(response.body);
      print("omar1");
      print(data);
      if (data == "Error") {
        Navigator.pop(context);
        Fluttertoast.showToast(
            msg: "Something Went Wrong Please Try Again Later",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.9);
      } else if (data == "Success") {
        getUserData(mobile.text);
        Fluttertoast.showToast(
            msg: "Registration Successful",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.green,
            textColor: Colors.white,
            fontSize: 16.0);
      }
      if (data == "Already Exists") {
        Navigator.pop(context);
        Fluttertoast.showToast(
            msg: "This Mobile Number Already Exist!",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.9);
      } else {
        print("error");
      }
    } catch (e) {
      print(e);
    }
  }
  String? location;

  List<Widget> cart = [];
  //
  DateTime date1 = DateTime.now();
  Future<Null> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: date1,
      firstDate: DateTime(1960),
      lastDate: DateTime(2030),
    );
    if (picked != null && picked != date1) {
      setState(() {
        date1 = picked;
        print(date1.toString());
        // dateOfBirth=picked ;
      });
    }
  }


  Color divierColor= Colors.transparent;
  Color divierColor1= Colors.transparent;
  Color divierColor2= Colors.transparent;
  Color divierColor3= Colors.transparent;
  bool ver1 = false;

  String? _selectedLocation;



  disableButton() {
    buttonEnabled = false;
  }

  bool loading = false;
  final phoneNumberController = TextEditingController();


  void showAlertDialog(BuildContext context) {
    var alertDialog = AlertDialog(
      backgroundColor: Colors.transparent,
      elevation: 0,
      content: Container(
        decoration: BoxDecoration(),
        alignment: Alignment.center,
        child: CircularProgressIndicator(
          strokeWidth: 4,
          color: Colors.yellowAccent,
        ),
      ),
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialog;
        });
  }

  // final auth = FirebaseAuth.instance ;
  @override
  Widget build(BuildContext context) {


    disableButton();
    dateOfBirth = '${date1.year} - ${date1.month} - ${date1.day}'.toString();
    // Size size = MediaQuery.of(context).size;

    return Scaffold(
      // backgroundColor: Colors.black,
            appBar: AppBar (

              leading: IconButton(
                icon: Icon(Icons.arrow_back_ios_new,color: Colors.black,),
                onPressed: ()=> Navigator.pop(context),

              ),
              backgroundColor:Colors.yellowAccent,
              centerTitle: true,
              title: Text ('Sign Up',
                  style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold)
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(25),
                ),
              ),

            ),

            body: Container(decoration: BoxDecoration(image:DecorationImage(image: AssetImage("images/images.jpeg"), fit: BoxFit.cover,opacity: 0.8),),
            child: Padding(
                padding: EdgeInsets.all(20),
                child: ListView(
                  children: <Widget>[

                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.015,
                    ),
                    Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width-40,
                          height: MediaQuery.of(context).size.height*0.18,
                          child: Center( child:
                          Container(width:MediaQuery.of(context).size.width*0.3,
                            height: MediaQuery.of(context).size.height*0.15,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(90),color: Colors.grey),
                            child:Center(child:
                            Text(
                              "Upload your image",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),
                            ),
                            ),
                          ),
                          ),),
                      ],
                    ),
                    Center(
                      child:Text(
                        'Please fill in the following form',
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,

                          fontSize: 20,
                        ),),

                    ),

                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),

                    Container(
                      margin: EdgeInsets.fromLTRB(
                        MediaQuery.of(context).size.width * 0.0,
                        0,
                        MediaQuery.of(context).size.width * 0.0,
                        0,
                      ),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(246, 248, 252, 5),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Color.fromRGBO(64, 168, 88, 1),
                          width: 1,
                        ),
                      ),
                      padding: EdgeInsets.all(1),
                      child: TextField(
                        controller: name,
                        decoration: InputDecoration(
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          border: InputBorder.none,
                          labelStyle: TextStyle(color: Colors.black),
                          labelText: 'First Name',
                          hintText: "Adam Alan",
                          prefixIcon: Icon(
                            Icons.account_circle_rounded,
                            color: Colors.black,
                          ),

                        ),
                        onChanged: (String value) {
                          final nameRegex = RegExp(r'^[A-Z][a-z]* [A-Z][a-z]+$');

                          setState(() {
                            if (nameRegex.hasMatch(value)) {
                              divierColor = Colors.transparent;
                              fullName = value;
                            }
                            else if(name.text==""){
                              divierColor = Colors.transparent;
                            }
                            else{
                              divierColor = Colors.red;
                            }
                          });


                        },
                      ),
                    ),

                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),

                    Container(
                      margin: EdgeInsets.fromLTRB(
                        MediaQuery.of(context).size.width * 0.0,
                        0,
                        MediaQuery.of(context).size.width * 0.0,
                        0,
                      ),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(246, 248, 252, 5),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Color.fromRGBO(64, 168, 88, 1),
                          width: 1,
                        ),
                      ),
                      padding: EdgeInsets.all(1),
                      child: TextField(
                        controller: lname,
                        decoration: InputDecoration(
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          border: InputBorder.none,
                          labelStyle: TextStyle(color: Colors.black),
                          labelText: 'Last Name',
                          hintText: "Adam Alan",
                          prefixIcon: Icon(
                            Icons.account_circle_rounded,
                            color: Colors.black,

                          ),

                        ),
                        onChanged: (String value) {
                          final nameRegex = RegExp(r'^[A-Z][a-z]* [A-Z][a-z]+$');


                          setState(() {
                            if (nameRegex.hasMatch(value)) {
                              divierColor = Colors.transparent;
                              fullName = value;
                            }
                            else if(name.text==""){
                              divierColor = Colors.transparent;
                            }
                            else{
                              divierColor = Colors.red;
                            }
                          });


                        },
                      ),
                    ),


                    // SizedBox(
                    //   height: MediaQuery.of(context).size.height*0.002,
                    // ),
                    SizedBox(height: 5,),

                    Row(children: [
                      SizedBox(width: 10,),
                      Text("Invalid Format",style: TextStyle(color: divierColor),),

                    ],),
                    Divider(
                      height: 10,
                      color: divierColor,
                      thickness: 1,
                      indent : 10,
                      endIndent : 10,
                    ),


                    // SizedBox(
                    //   height: MediaQuery.of(context).size.height * 0.03,
                    // ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                        MediaQuery.of(context).size.width * 0.0,
                        0,
                        MediaQuery.of(context).size.width * 0.0,
                        0,
                      ),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(246, 248, 252, 5),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Color.fromRGBO(64, 168, 88, 1),
                          width: 1,
                        ),
                      ),
                      padding: EdgeInsets.all(1),
                      child: TextField(
                        controller: email,
                        decoration: InputDecoration(
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          border: InputBorder.none,
                          labelStyle: TextStyle(color: Colors.black),
                          labelText: 'Email',
                          hintText: 'abc@example.com',
                          prefixIcon: Icon(
                            Icons.alternate_email_outlined,
                            color: Colors.black,
                          ),
                        ),
                        onChanged: (String value) {
                          final nameRegex =  RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
                          // if (nameRegex.hasMatch(value)) {
                          //   setState(() {
                          //     divierColor = Colors.transparent;
                          //     fullName = value;
                          //   });
                          // }

                          setState(() {
                            if (nameRegex.hasMatch(value)) {
                              divierColor1 = Colors.transparent;
                              Email = value;
                            }
                            else if(email.text==""){
                              divierColor1 = Colors.transparent;
                            }
                            else{
                              divierColor1 = Colors.red;
                            }
                          });


                        },
                      ),
                    ),
                    SizedBox(height: 5,),

                    Row(children: [
                      SizedBox(width: 10,),
                      Text("Invalid Email Format",style: TextStyle(color: divierColor1),),

                    ],),
                    Divider(
                      height: 10,
                      color: divierColor1,
                      thickness: 1,
                      indent : 10,
                      endIndent : 10,
                    ),

                    // SizedBox(
                    //   height: MediaQuery.of(context).size.height * 0.03,
                    // ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                        MediaQuery.of(context).size.width * 0.00,
                        0,
                        MediaQuery.of(context).size.width * 0.00,
                        0,
                      ),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(246, 248, 252, 5),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.yellowAccent,
                          width: 1,
                        ),
                      ),
                      padding: EdgeInsets.all(1),
                      child: TextField(
                        controller: mobile,
                        decoration: InputDecoration(
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          border: InputBorder.none,
                          labelStyle: TextStyle(color: Colors.black),
                          labelText: 'Mobile Number',
                          hintText:'012345567890',
                          prefixIcon: Icon(
                            Icons.phone,
                            color: Colors.black,
                          ),
                        ),
                        onChanged: (String value) {
                          final nameRegex = RegExp(r'^01[0125]\d{8}$');
                          // if (nameRegex.hasMatch(value)) {
                          //   setState(() {
                          //     divierColor = Colors.transparent;
                          //     fullName = value;
                          //   });
                          // }

                          setState(() {
                            if (nameRegex.hasMatch(value)) {
                              divierColor2 = Colors.transparent;
                              mobileNumber = value;
                            }
                            else if(mobile.text==""){
                              divierColor2 = Colors.transparent;
                            }
                            else{
                              divierColor2 = Colors.red;
                            }
                          });


                        },
                      ),
                    ),
                    SizedBox(height: 5,),

                    Row(children: [
                      SizedBox(width: 10,),
                      Text("Invalid Mobile Number Format",style: TextStyle(color: divierColor2),),

                    ],),
                    Divider(
                      height: 10,
                      color: divierColor2,
                      thickness: 1,
                      indent : 10,
                      endIndent : 10,
                    ),

                    // SizedBox(
                    //   height: MediaQuery.of(context).size.height * 0.03,
                    // ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                        MediaQuery.of(context).size.width * 0.00,
                        0,
                        MediaQuery.of(context).size.width * 0.00,
                        0,
                      ),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(246, 248, 252, 5),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Color.fromRGBO(64, 168, 88, 1),
                          width: 1,
                        ),
                      ),
                      padding: EdgeInsets.all(1),
                      child: TextField(
                        controller: pass,
                        obscureText: true,
                        cursorColor: Colors.green,
                        decoration: InputDecoration(
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          border: InputBorder.none,
                          labelStyle: TextStyle(color: Colors.black),
                          labelText: 'Password',
                          hintText: '********',
                          prefixIcon: Icon(
                            Icons.password,
                            color: Colors.black,
                          ),
                        ),
                        onChanged: (String value) {
                          final nameRegex = RegExp(r'^.{8,}$');
                          // if (nameRegex.hasMatch(value)) {
                          //   setState(() {
                          //     divierColor = Colors.transparent;
                          //     fullName = value;
                          //   });
                          // }

                          setState(() {
                            if (nameRegex.hasMatch(value)) {
                              divierColor3 = Colors.transparent;
                              Password = value;
                            }
                            else if(pass.text==""){
                              divierColor3 = Colors.transparent;
                            }
                            else{
                              divierColor3 = Colors.red;
                            }
                          });


                        },
                      ),
                    ),
                    SizedBox(height: 5,),



                    Row(children: [
                      SizedBox(width: 10,),
                      Text("Must Contain at Least 8 Characters",style: TextStyle(color: divierColor3),),

                      SizedBox(height: 5,),

                      //
                    ],),
                    Divider(
                      height: 10,
                      color: divierColor3,
                      thickness: 1,
                      indent : 10,
                      endIndent : 10,
                    ),



                    Container(
                      margin: EdgeInsets.fromLTRB(
                        MediaQuery.of(context).size.width * 0.00,
                        0,
                        MediaQuery.of(context).size.width * 0.00,
                        0,
                      ),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(246, 248, 252, 5),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Color.fromRGBO(64, 168, 88, 1),
                          width: 1,
                        ),
                      ),
                      padding: EdgeInsets.all(1),
                      child: TextField(
                        //controller: pass,
                        //obscureText: true,
                        cursorColor: Colors.green,
                        decoration: InputDecoration(
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          border: InputBorder.none,
                          labelStyle: TextStyle(color: Colors.black),
                          labelText: 'Date of birth',
                          hintText: '--/--/----',
                          prefixIcon: Icon(
                            Icons.calendar_month_outlined,
                            color: Colors.black,
                          ),
                        ),
                        onChanged: (String value) {
                          final nameRegex = RegExp(r'^.{8,}$');
                          // if (nameRegex.hasMatch(value)) {
                          //   setState(() {
                          //     divierColor = Colors.transparent;
                          //     fullName = value;
                          //   });
                          // }

                          setState(() {
                            if (nameRegex.hasMatch(value)) {
                              divierColor3 = Colors.transparent;
                              Password = value;
                            }
                            else if(pass.text==""){
                              divierColor3 = Colors.transparent;
                            }
                            else{
                              divierColor3 = Colors.red;
                            }
                          });


                        },
                      ),
                    ),
                    SizedBox(height: 5,),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),



                    Column(

                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(    margin: EdgeInsets.fromLTRB(
                              MediaQuery.of(context).size.width * 0.02,
                              0,
                              MediaQuery.of(context).size.width * 0.00,
                              0),
                            child:     Text("Select your Gender:",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),

                          ),

                          RadioButtonGroup(
                            labelStyle: TextStyle(fontSize: 23,color: Colors.white,fontWeight: FontWeight.bold),
                              activeColor: Colors.black,
                              labels: <String>["Male", "Female"],
                              onSelected: (String selected) {
                                setState(() {
                                  gender = selected;
                                });
                              }),
                        ]),


                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          // height: MediaQuery.of(context).size.height*0.8,
                          margin: EdgeInsets.fromLTRB(
                              MediaQuery.of(context).size.width * 0.02,
                              0,
                              MediaQuery.of(context).size.width * 0.00,
                              0),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(246, 248, 252, 5),
                            borderRadius: BorderRadius.circular(20),

                          ),

                        ),

                      ],),

                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),

                    Text((() {
                      if (fullName != '' &&
                          Email != '' &&
                          mobileNumber != '' &&
                          Password != '' &&
                          gender != '') {
                        enableButton();
                        return "";
                      } else {
                        disableButton();
                        return "Please fill all fields, make sure your mobile number is 11 digits";
                      }
                    })(),
                      style: TextStyle(color: Colors.redAccent),
                    ),
                    Text((() {
                      if(divierColor==Colors.transparent&&divierColor1==Colors.transparent&&divierColor2==Colors.transparent&&divierColor3==Colors.transparent&&name.text!=""&&email.text!=""&&pass.text!=""&&mobile.text!=""&&location!=""&&gender!=""){
                        enableButton();
                        return "";}
                      else{
                        disableButton();
                        return "";}
                    })(),style: TextStyle(color: Colors.redAccent),),
                    Container(
                        margin: EdgeInsets.symmetric(vertical: 12),
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: SizedBox(
                              height: 55,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.green),
                                  onPressed: buttonEnabled ? () {
                                    if (name.text == "" ||
                                        email.text == "" ||
                                        mobile.text == "" ||
                                        pass.text == "") {
                                      Fluttertoast.showToast(
                                          msg: "Please Fill All the Fields",
                                          toastLength: Toast.LENGTH_SHORT,
                                          gravity: ToastGravity.CENTER,
                                          timeInSecForIosWeb: 1,
                                          backgroundColor: Colors.red,
                                          textColor: Colors.white,
                                          fontSize: 16.9);
                                    } else {
                                      showAlertDialog(context);

                                      SendData();
                                    }

                                    // userRegistration();
                                  } : null,
                                  child: Text(
                                    'Sign Up',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 19),
                                  ))),
                        )),
                    TextButton(
                      onPressed: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => Sign_In1()));
                      },
                      child: const Text('Already have an account?',
                          style: TextStyle(color: Colors.black, fontSize: 16)),
                    ),
                  ],
                )),
            ));

  }

}
