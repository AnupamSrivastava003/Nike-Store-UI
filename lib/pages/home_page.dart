import 'package:flutter/material.dart';
import 'package:nike_store_ui/components/bottom_nav_bar.dart';
import 'package:nike_store_ui/pages/card_page.dart';
import 'package:nike_store_ui/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // this selected index is used to control the bottomnavbar
  int _selectedIndex = 0;

  //this method will update the selected index
  void navigateBottomBar (index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //page to display
  final List<Widget> _pages = [
    const ShopPage(),
    const CardPage(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder:(context) => IconButton(
            icon: Icon(Icons.menu, color: Colors.black,),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),  
      ),
      body: _pages[_selectedIndex],
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [Padding(
              padding: const EdgeInsets.only(top: 130, bottom: 50),
              child: Image.asset("lib/images/logo.png", color: Colors.white, height: 50,),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Divider(color: Colors.grey[800],),
            ),

            const Padding(
              padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25),
              child: ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                title: Text("Home", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),),
              ),
            ),

            const Padding(
              padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25),
              child: ListTile(
                leading: Icon(
                  Icons.info,
                  color: Colors.white,
                ),
                title: Text("About", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),),
              ),
            ),],
            ),

            const Padding(
              padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 25),
              child: ListTile(
                leading: Icon(
                  Icons.logout_outlined,
                  color: Colors.white,
                ),
                title: Text("Logout", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}