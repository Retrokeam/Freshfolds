import 'package:flutter/material.dart';
import 'package:mama_fua_app/Widgets/splashscreen.dart';
import 'package:mama_fua_app/Models/dry_cleaning.dart';
import 'package:mama_fua_app/Pages/login.dart';
import 'package:mama_fua_app/Pages/signup_page.dart';
//import 'package:';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen()
    );
  }
}

