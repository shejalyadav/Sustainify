import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class LandingPage extends StatefulWidget {
  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sustainify',
            style: TextStyle(fontSize: 20.0, color: Colors.white)),
        backgroundColor: Color.fromARGB(255, 126, 201, 136),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {
              // Define the action when the search button is pressed
            },
          ),
        ],
        toolbarHeight: 80.0, // Increase the height of the AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Categories",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Image.asset('assets/images/Rectangle13.png'),
                    SizedBox(
                      width: 15,
                    ),
                    Image.asset('assets/images/Rectangle14.png'),
                    SizedBox(
                      width: 15,
                    ),
                    Image.asset('assets/images/Rectangle15.png'),
                    SizedBox(
                      width: 15,
                    ),
                    Image.asset('assets/images/Rectangle13.png'),
                    SizedBox(
                      width: 15,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Live Activities",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset('assets/images/Rectangle16.png'),
            SizedBox(
              height: 20,
            ),
            Image.asset('assets/images/Rectangle17.png'),
            SizedBox(
              height: 20,
            ),
            Image.asset('assets/images/Rectangle18.png'),
          ],
        ),
      ),
      bottomNavigationBar: GNav(
          backgroundColor: Colors.white,
          color: Colors.black,
          activeColor: Colors.black,
          tabBackgroundColor: Color.fromARGB(255, 76, 131, 84),
          gap: 8,
          padding: EdgeInsets.all(16),
          tabs: [
            GButton(
              icon: Icons.home,
              gap: 8,
              text: "Home",
            ),
            GButton(
              icon: Icons.people,
              gap: 8,
              text: "Community",
            ),
            GButton(
              icon: Icons.favorite,
              gap: 8,
              text: "Favourites",
            ),
            GButton(
              icon: Icons.settings,
              gap: 8,
              text: "Settings",
            ),
          ],
          selectedIndex: 0,
          onTabChange: (index) {
            // Define the action when the tab is changed
          }),
    );
  }
}
