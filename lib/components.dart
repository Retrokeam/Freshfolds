import 'package:flutter/material.dart';

class myTextField extends StatelessWidget {
  const myTextField({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
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
                  );
  }
}

