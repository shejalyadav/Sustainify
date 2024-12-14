import 'package:flutter/material.dart';
import 'package:sustainify/screens/rewardPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sustainify Rewards',
      debugShowCheckedModeBanner: false,
      home: RewardPage(),
    );
  }
  
 
}