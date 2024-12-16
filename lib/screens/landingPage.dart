import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sustainify/screens/customAppBar.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(height: 15),
            Align(
              alignment: Alignment.centerLeft,
              child: Text("Categories", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 15),
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Image.asset('assets/images/Rectangle13.png'),
                    SizedBox(width: 15),
                    Image.asset('assets/images/Rectangle14.png'),
                    SizedBox(width: 15),
                    Image.asset('assets/images/Rectangle15.png'),
                    SizedBox(width: 15),
                    Image.asset('assets/images/Rectangle13.png'),
                    SizedBox(width: 15),
                  ],
                ),
              ),
            ),
            SizedBox(height: 25),
            Align(
              alignment: Alignment.centerLeft,
              child: Text("Live Activities", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 20),
            Image.asset('assets/images/Rectangle16.png'),
            SizedBox(height: 20),
            Image.asset('assets/images/Rectangle17.png'),
            SizedBox(height: 20),
            Image.asset('assets/images/Rectangle18.png'),
          ],
        ),
      ),
    );
  }
}
