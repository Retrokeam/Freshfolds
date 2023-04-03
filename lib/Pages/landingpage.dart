import 'package:flutter/material.dart';
import 'package:mama_fua_app/Pages/login.dart';
import 'package:mama_fua_app/Pages/signup_page.dart';

class Landing extends StatelessWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Container(
        child: Column(
          children: [
            Container(
              width: w,
              height: h*0.4,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  image: DecorationImage(
                      image: AssetImage(
                          "images/log.png"
                      ),
                      fit: BoxFit.cover
                  )
              ),
            ),
            SizedBox(height: 70,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Text(
                      "Welcome to "
                          "FreshFolds "
                          "Laundry",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 80,),
            Container(
              child: Center(
                child: ElevatedButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    minimumSize: Size(300, 40),
                    foregroundColor: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Login_page()),
                    );
                  },
                  child: const Text("Login",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
            SizedBox(height: 25,),
            Container(
              child: Center(
                child: ElevatedButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    minimumSize: Size(300, 40),
                    foregroundColor: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SignupPage()),
                    );
                  },
                  child: const Text("Sign Up",
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
