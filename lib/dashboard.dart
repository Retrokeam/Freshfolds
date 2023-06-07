import 'package:flutter/material.dart';
import 'package:fua_app/custom.dart';
import 'package:fua_app/dry_cleaning.dart';
import 'package:fua_app/login.dart';
import 'package:fua_app/payment.dart';

class dashboard extends StatefulWidget {
  const dashboard({Key? key}) : super(key: key);

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  /*int _selectedIndex = 0;
  var screenList = [
   Pay()
  ];*/
  /*static const List<Widget> _widgetOptions = <Widget>[
    Text('Payment', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];*/
  /*void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        elevation: 10,
        /*leading: Icon(Icons.account_circle_rounded),
        leadingWidth: 75,*/
        centerTitle: true,
        automaticallyImplyLeading: true,
        title: Text('Dashboard',
        style: TextStyle(
          color:  Colors.black,
        ),
        ),
      ),
      drawer: Drawer(
        width: 250,
        backgroundColor: Colors.lightBlue,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.person_outline,
                  color: Colors.blue,
                ),
              ),
              title: Text(
                "Jay Keam",
                style: TextStyle(color: Colors.black),
              ),
              subtitle: Text("User",
                style: TextStyle(color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                   "BROWSE",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal
                  ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Divider(
                color: Colors.white,
                height: 1,
              ),
            ),
            Stack(
              children: [
                Positioned(
                  height: 56,
                  width: 250,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                  ),
                ),
                ListTile(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => dashboard()),
                    );
                  },
                  leading: SizedBox(
                    height: 34,
                    width: 34,
                    child: Icon(
                      Icons.home_outlined,
                      color: Colors.blue,
                    ),
                  ),
                  title: Text(
                    "Home",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Divider(
                color: Colors.white,
                height: 1,
              ),
            ),
            Stack(
              children: [
                Positioned(
                  height: 56,
                  width: 250,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                  ),
                ),
                ListTile(
                  onTap: (){},
                  leading: SizedBox(
                    height: 34,
                    width: 34,
                    child: Icon(
                      Icons.star_border_sharp,
                      color: Colors.blue,
                    ),
                  ),
                  title: Text(
                    "Favorites",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Divider(
                color: Colors.white,
                height: 1,
              ),
            ),
            Stack(
              children: [
                Positioned(
                  height: 56,
                  width: 250,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                  ),
                ),
                ListTile(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Pay()),
                    );
                  },
                  leading: SizedBox(
                    height: 34,
                    width: 34,
                    child: Icon(
                      Icons.payment_outlined,
                      color: Colors.blue,
                    ),
                  ),
                  title: Text(
                    "Pay Now",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Divider(
                color: Colors.white,
                height: 1,
              ),
            ),
            Stack(
              children: [
                Positioned(
                  height: 56,
                  width: 250,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                  ),
                ),
                ListTile(
                  onTap: (){},
                  leading: SizedBox(
                    height: 34,
                    width: 34,
                    child: Icon(
                      Icons.help_outline_sharp,
                      color: Colors.blue,
                    ),
                  ),
                  title: Text(
                    "Help",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Text(
                    "HISTORY",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Divider(
                color: Colors.white,
                height: 1,
              ),
            ),
            Stack(
              children: [
                Positioned(
                  height: 56,
                  width: 250,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                  ),
                ),
                ListTile(
                  onTap: (){},
                  leading: SizedBox(
                    height: 34,
                    width: 34,
                    child: Icon(
                      Icons.history_rounded,
                      color: Colors.blue,
                    ),
                  ),
                  title: Text(
                    "History",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Divider(
                color: Colors.white,
                height: 1,
              ),
            ),
            Stack(
              children: [
                Positioned(
                  height: 56,
                  width: 250,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                  ),
                ),
                ListTile(
                  onTap: (){},
                  leading: SizedBox(
                    height: 34,
                    width: 34,
                    child: Icon(
                      Icons.notifications_none_rounded,
                      color: Colors.blue,
                    ),
                  ),
                  title: Text(
                    "Notifications",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Divider(
                color: Colors.white,
                height: 1,
              ),
            ),
            Stack(
              children: [
                Positioned(
                  height: 56,
                  width: 250,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                  ),
                ),
                ListTile(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login_page())
                    );
                  },
                  leading: SizedBox(
                    height: 34,
                    width: 34,
                    child: Icon(
                      Icons.logout_outlined,
                      color: Colors.blue,
                    ),
                  ),
                  title: Text(
                    "Logout",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ],
          ),
        ),
      ),
      body: Center(child: myCarousel(),
    
      /*body: Center(
        child: screenList[_selectedIndex],
      ),*/
     /* bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                backgroundColor: Colors.cyanAccent
            ),

          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          iconSize: 30,
          onTap: (index){
            setState(() {
              _selectedIndex = index;
            });
          },
      ),*/
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Colors.lightBlueAccent,
      //   onPressed: () {
      //     Navigator.push(
      //       context,
      //       MaterialPageRoute(builder: (context) => dry_cleaning()),
      //     );
      //   },
      //   child: Icon(Icons.dry_cleaning_rounded),
      // ),

      )
    );
  }
}
