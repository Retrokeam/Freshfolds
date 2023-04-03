import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mama_fua_app/Pages/signup_page.dart';
import 'package:mama_fua_app/Pages/dashboard.dart';

class Login_page extends StatefulWidget {
  const Login_page({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<Login_page> {
  @override
  Widget build(BuildContext context) {
    List images = [
     /* "f.png"
      "g.png"
      "t.jpg"*/
    ];
    double w = MediaQuery.of(context).size.width;
        double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column (
          children: [ 
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
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Email",
                          prefixIcon: Icon(Icons.email,
                            color: Colors.lightBlue.shade400,
                          ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Colors.white,
                          )
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius:  BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Colors.white,
                          
                          )
                        )
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
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
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Password",
                          prefixIcon: Icon(Icons.password,
                            color: Colors.lightBlue.shade400,
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 1.0
                              )
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius:  BorderRadius.circular(30),
                              borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 1.0
                              )
                          )
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                ],
              ),
            ),
            SizedBox(height: 15,),
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
           SizedBox(height: 10,
           ),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("images/g.png",
                  height: 30,
                ),
                SizedBox(width: 10,),
                Image.asset("images/f.png",
                  height: 30,
                ),
                SizedBox(width: 10,),
                Image.asset("images/t.png",
                  height: 30,
                ),
              ],
            ),
            SizedBox(height: 40,),
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
