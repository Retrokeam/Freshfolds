import 'package:flutter/material.dart';
import 'package:fua_app/login.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: SingleChildScrollView(
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: h*0.2,),
                ],
              ),
            ),
             SizedBox(height: 50,),
            Container(
              margin: const EdgeInsets.only(left: 30, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                              color: Colors.grey.withOpacity(0.2)
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
                  Container(
                    decoration:  BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow:[
                          BoxShadow(
                              blurRadius: 10,
                              spreadRadius: 7,
                              offset: Offset(1, 1),
                              color: Colors.grey.withOpacity(0.2)
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
                  // Row(
                  //   children: [
                  //     Expanded(child: Container(),),
                  //     Text(
                  //       "Forgot your password",
                  //       style: TextStyle(
                  //           fontSize: 20,
                  //           color: Colors.grey[500]
                  //       ),
                  //     )
                  //   ],
                  // )
                ],
              ),
            ),
            SizedBox(height: 70,),
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
                          builder: (context) => Login_page()),
                    );
                  },
                  child: const Text("Sign In",
                  style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
