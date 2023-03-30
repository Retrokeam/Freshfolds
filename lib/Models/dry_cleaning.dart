/*
import 'package:flutter/material.dart';

class dry_cleaning extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: Stack(
                children: <Widget>[
                    Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height*4/7,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Color(0xff40dedf), Color(0xff0fb2ea)],
                            ),
                        ),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/2.7),
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                            ),
                            color: Colors.white
                        ),
                    ),
                    Positioned(
                        top: 50,
                        left: 20,
                        child: IconButton(
                            onPressed:()=> Navigator.pop(context),
                            icon: Icon(Icons.arrow_back,
                                color: Colors.white,
                                size: 25,),
                        ),
                    ),
                    Positioned(
                        top: 90,
                        left: 20,
                        child: Text(
                            "Categories",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                    ),
                    Positioned(
                        top: 135,
                        left: 20,
                        child: Container(
                            height: 100,
                            width: MediaQuery.of(context).size.width,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: categoryData.length,
                                itemBuilder: (context,index){
                                    bool isSelected = false;
                                    if (index == 0) {
                                        isSelected = true;
                                    }
                                    return Row(
                                        children: <Widget>[
                                            Column(
                                                children: <Widget>[
                                                    Container(
                                                        width: 68,
                                                        height: 68,
                                                        decoration: BoxDecoration(
                                                            color: isSelected?
                                                            Colors.white:
                                                            Colors.transparent,
                                                            borderRadius: BorderRadius.circular(16),
                                                            border: Border.all(
                                                                color: Colors.white,
                                                                width: 1,
                                                            ),
                                                            boxShadow: isSelected
                                                                ?[
                                                                BoxShadow(
                                                                    color: Color(0x14000000),
                                                                    blurRadius: 10
                                                                )
                                                            ]: null
                                                        ),
                                                        child: Center(
                                                            child: Image.asset(categoryData[index].imageUrl),
                                                        ),
                                                    ),
                                                    SizedBox(height: 10,),
                                                    Text(
                                                        categoryData[index].name,
                                                        style:
                                                        TextStyle(color: Colors.white, fontSize: 15),
                                                    ),
                                                ],
                                            ),
                                            SizedBox(width: 20,)
                                        ],
                                    );
                                },
                            ),
                        ),
                    ),
                    Positioned(
                        top: 250,
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        child: GridView.count(
                            crossAxisCount: 2,
                            children: <Widget>[
                                _customCard(

                                    imageUrl: "dress.png", item: "T-shirt", price: "\$0.50", count: 5
                                ),
                                _customCard(
                                    imageUrl: "tshirt.png", item: "Shirt", price: "\$0.50", count: 5
                                ),
                                _customCard(
                                    imageUrl: ".png", item: "T-shirt", price: "\$0.50", count: 5
                                ),
                                _customCard(
                                    imageUrl: ".png", item: "T-shirt", price: "\$0.50", count: 5
                                ),
                            ],
                        ),
                    )
                ],
            ),
        );
    }

    _customCard({required String imageUrl, required String item, required String price, required int count}){
        return SizedBox(
            height: 190,
            width: 160,
            child: Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                ),
                elevation: 10,
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                            Text(
                                item,
                                style: TextStyle(fontSize: 24),
                            ),
                            Image.asset("images/" + imageUrl),
                            Text(price),
                            Divider(),
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
                                            style: TextStyle(fontSize: 28,letterSpacing: 3),),
                                    ),
                                    Text("$count"),
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
                                    ),
                                ],
                            )
                        ],
                    ),
                ),
            ),
        );
    }



}
class list {
    final String name;
    final String count;
    final String imageUrl;

    list({required this.imageUrl, required this.name, required this.count});
}

List<list> categoryData = [
    new list(
        imageUrl:   "assets/page1/tops.png",
        name: "TOPS",
        count: "6"
    ),
    new list(
        imageUrl:   "assets/page1/bottoms.png",
        name: "BOTTOMS",
        count: "6"
    ),
    new list(
        imageUrl:   "images/dres.png",
        name: "DRESSES",
        count: "6"
    ),
    new list(
        imageUrl:   "images/coat.png",
        name: "COATS",
        count: "6"
    ),
    new list(
        imageUrl:   "assets/page1/suits.png",
        name: "SUITS",
        count: "6"
    ),

];*/
import 'package:flutter/material.dart';

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
                          fontWeight: FontWeight.normal
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
                 color: Colors.deepPurple,
                  fontSize: 30,
                  fontWeight: FontWeight.normal
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
                horizontalItems(
                    Colors.greenAccent.withOpacity(0.8),  "TOPS"),
                horizontalItems(
                    Colors.greenAccent.withOpacity(0.8),  "BOTTOMS"),
                horizontalItems(
                    Colors.greenAccent.withOpacity(0.5),  "DRESSES"),
                horizontalItems(
                    Colors.greenAccent.withOpacity(0.5),  "COATS"),
                horizontalItems(
                    Colors.greenAccent.withOpacity(0.5),  "SUITS"),
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
                products("bottom.png", "Men Official", 400,  5),
                products("dress1.png", "Dress",  150, 5),
                products("jacket.png", "Men Boots",   400,5),
                products("suit.png", "Nike Airforce",  400, 5),
              ],
            ),
          )
        ],
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
