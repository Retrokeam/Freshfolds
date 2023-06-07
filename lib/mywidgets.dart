import 'package:flutter/material.dart';

Widget menuButtons() {
  return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("images/g.png",
                  height: 40,
                ),
                const SizedBox(width: 10,),
                Image.asset("images/f.png",
                  height: 40,
                ),
                const SizedBox(width: 10,),
                Image.asset("images/t.png",
                  height: 40,
                ),
              ],
            );

}