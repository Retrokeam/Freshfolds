import 'package:flutter/material.dart';
import 'package:mama_fua_app/Models/dry_cleaning.dart';
import 'package:mama_fua_app/Pages/payment.dart';

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
          ],
          ),
        ),
      ),
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
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Pay()),
          );
        },
        child: Icon(Icons.dry_cleaning_rounded),
      ),

    );
  }
}
