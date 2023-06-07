import 'package:flutter/material.dart';
import 'package:fua_app/dashboard.dart';

class dry_cleaning extends StatelessWidget {
  const dry_cleaning({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      "Hi Jay,",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 80.0),
            child: Text(
              "What service do you need?",
              style: TextStyle(
                 color: Colors.black,
                  fontSize: 35,
                  fontWeight: FontWeight.w600
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
               /* ElevatedButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    minimumSize: Size(10, 5),
                    foregroundColor: Colors.black,
                  ),
                  onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => dashboard()),
                  );
                }, child:
                horizontalItems(
                    Colors.white.withOpacity(0.8),  "TOPS"),
                ),*/
                horizontalItems(
                    Colors.white.withOpacity(0.8),  "TOPS"),
                horizontalItems(
                    Colors.white.withOpacity(0.8),  "BOTTOMS"),
                horizontalItems(
                    Colors.white.withOpacity(0.5),  "DRESSES"),
                horizontalItems(
                    Colors.white.withOpacity(0.5),  "COATS"),
                horizontalItems(
                    Colors.white.withOpacity(0.5),  "SUITS"),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                products("tshirt.jpg", "T-Shirt",  100, 5),
                products("trouser.png", "Trouser", 150,  5),
                products("dress1.png", "Dress",  200, 5),
                products("jacket.png", "Jacket",   250,5),
                products("suit1.png", "Suit",  500, 5),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => dashboard()),
          );
        },
        child: Icon(Icons.dashboard_customize_outlined),
      ),
    );
  }
  Widget horizontalItems(Color color, String itemName) {
    return GestureDetector(
      onTap: () {},
      child: Container(

        margin: EdgeInsets.only(left: 20),
        height: 80,
        width: 150,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    children: [
                      Text(
                        "$itemName",
                        style: const TextStyle(
                            fontFamily: "sans-serif"
                            , fontWeight: FontWeight.bold,
                            fontSize: 18
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget products(String asset, String itemName,  double price,int count) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(left: 20),
        height: 280,
        width: 200,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                  ),
                  Image.asset(
                    "images/$asset",
                    width: 90,
                  ),
                  Text(
                    "$itemName",
                    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "${price.toString()}",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.deepOrange),
                  ),
                  const Divider(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.blue
                              ),
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.white
                        ),
                        child: Text(" - ",
                          style: TextStyle(fontSize: 28,
                              letterSpacing: 3),),
                        ),
                        Text("${count.toString()}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.deepOrange
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.blue
                              ),
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.white
                          ),
                          child: Text(" + ",
                            style: TextStyle(fontSize: 28,letterSpacing: 1),),
                        )

                      ],
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
