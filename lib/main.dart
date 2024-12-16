
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sustainify/screens/customAppBar.dart';
import 'package:sustainify/screens/landingPage.dart';
import 'package:sustainify/screens/rewardPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: HomePage(),  
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0; 

  final List<Widget> _pages = [
    LandingPage(),  
    Center(child: Text("community Page")),
    RewardPage(),   
    Center(child: Text("Profile Page")), 
  ];

  void _onTabSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: _pages[_selectedIndex], 
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
            icon: Icons.card_giftcard_rounded,
            gap: 8,
            text: "Rewards",  
          ),
          GButton(
            icon: Icons.account_circle_outlined,
            gap: 8,
            text: "Profile",
          ),
        ],
        selectedIndex: _selectedIndex,
        onTabChange: _onTabSelected,
      ),
    );
  }
}