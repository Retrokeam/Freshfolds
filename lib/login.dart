import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fua_app/components.dart';
import 'package:fua_app/mywidgets.dart';
import 'package:fua_app/sign_up.dart';
import 'package:fua_app/dashboard.dart';
import 'package:country_code_picker/country_code_picker.dart';

class Login_page extends StatefulWidget {
  const Login_page({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<Login_page> {
@override
  
    TextEditingController phone = TextEditingController();
  Widget build(BuildContext context) {
    List images = [
     /* "f.png"
      "g.png"
      "t.jpg"*/
    ];
    var code = '+254';
    var phone1 = '';
    double w = MediaQuery.of(context).size.width;
        double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column (
          children: [ 
            //logo
            Container( 
              width: w,
              height: h*0.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                image: DecorationImage(
                  image: AssetImage(
                    "images/logo2.png"
                  ),
                 fit: BoxFit.cover
                )
              ),
            ),
           SizedBox(height: 30,),
           //Texts
            Container(
             margin: const EdgeInsets.only(left: 30, right: 30),
              child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome back",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal
                    ),
                  ),
                  Text(
                    "Login with",
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 50,),
                  //email textfield
                  myTextField(),
                  SizedBox(height: 20,),
                  //password textfield
                  // Container(
                  //   decoration:  BoxDecoration(
                  //     color: Colors.white,
                  //       borderRadius: BorderRadius.circular(30),
                  //       boxShadow:[
                  //         BoxShadow(
                  //             blurRadius: 10,
                  //             spreadRadius: 7,
                  //             offset: Offset(1, 1),
                  //             color: Colors.grey.withOpacity(0.5)
                  //         )
                  //       ]
                  //   ),
                  //   child: TextField(
                  //     obscureText: true,
                  //     decoration: InputDecoration(
                  //         hintText: "Password",
                  //         prefixIcon: Icon(Icons.password,
                  //           color: Colors.lightBlue.shade400,
                  //         ),
                  //         focusedBorder: OutlineInputBorder(
                  //             borderRadius: BorderRadius.circular(30),
                  //             borderSide: BorderSide(
                  //                 color: Colors.white,
                  //                 width: 1.0
                  //             )
                  //         ),
                  //         enabledBorder: OutlineInputBorder(
                  //             borderRadius:  BorderRadius.circular(30),
                  //             borderSide: BorderSide(
                  //                 color: Colors.white,
                  //                 width: 1.0
                  //             )
                  //         )
                  //     ),
                  //   ),
                  // ),
                  myTextField(),
                  SizedBox(height: 20,),
                  //phonemumber textfield
                  Container(
                    decoration:  BoxDecoration(
                      color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow:[
                          BoxShadow(
                              blurRadius: 10,
                              spreadRadius: 7,
                              offset: Offset(1, 1),
                              color: Colors.grey.withOpacity(0.5)
                          )
                        ]
                    ),
                    child: 
                    TextField(
      controller: phone,
      decoration: InputDecoration(
        //floatingLabelAlignment: FloatingLabelAlignment.center,
        //labelText: 'Phone Number',
        //floatingLabelBehavior: FloatingLabelBehavior.always,
        // enabledBorder: const OutlineInputBorder(
        //   borderSide: BorderSide(color: Color.fromARGB(255, 59, 59, 59)),
        // ),
        // focusedBorder: const OutlineInputBorder(
        //   borderSide: BorderSide(
        //     color: Color.fromARGB(255, 255, 191, 0),
        //   ),
        // ),
        // border: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(5),
        // ),
        prefixIcon: CountryCodePicker(
          initialSelection: 'KE', // Set 'KE' for Kenya
          onChanged: (value) {
            code = value.toString();
            phone1 = code + "" + phone.text;
             print(phone1);
          },
          // Optional. Shows only country name and flag
          showFlag: true,
          // Optional. Shows only country name and code
          showCountryOnly: false,
          // Optional. Shows the country list as dropdown
          showDropDownButton: true,
          // Required for onChanged to work
        ),
      ),
       keyboardType: TextInputType.phone,
      onChanged: (value) {
        phone1 = "$code $value";
         print(phone1);
},
),

                    

                  ),
                  SizedBox(height: 20,),
                ],
              ),
            ),
            SizedBox(height: 15,),
            //login button
            Container(
              child: Center(
                child: ElevatedButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    minimumSize: Size(250, 40),
                    foregroundColor: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => dashboard()),
                    );
                  },
                  child: const Text("Login",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
           SizedBox(height: 10,),
           //or continue with
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      "Or, continue with"
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30,),
            //sign in options
            menuButtons(),
            SizedBox(height: 40,),
            //no account
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                const Text("Don't have an account?"),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SignupPage()),
                    );
                  },
                  child: const Text("Create"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
