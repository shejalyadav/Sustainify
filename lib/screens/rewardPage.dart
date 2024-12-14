import 'package:flutter/material.dart';
import 'package:sustainify/model/rewardModel.dart';

//import 'bottom_nav.dart'; 

class RewardPage extends StatelessWidget {
  final List<Reward> rewards = [
    Reward(
      logo: 'assets/images/pumaLogo.png',
      description: '10% Discount on all t-shirts',
      pointsRequired: 500,
    ),
    Reward(
      logo: 'assets/images/mcdLogo.png',
      description: 'Free coke with your next meal',
      pointsRequired: 200,
    ),
    Reward(
      logo: 'assets/images/zaraLogo.png',
      description: '10% Discount on all t-shirts',
      pointsRequired: 500,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          
          // Custom App Bar
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 120, 202, 123),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                   Image.asset(
                        'assets/images/SustainifyLogo.png',
                        width: 28,
                        height: 28,
                        fit: BoxFit.contain,
                      ),
                    SizedBox(width: 8),
                    Text(
                      'Sustainify',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Icon(Icons.search, color: Colors.white, size: 28),
              ],
            ),
          ),

          // Points Display
          Container(
            padding: EdgeInsets.symmetric(vertical: 24),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: '300',
                    style: TextStyle(
                      fontSize: 48,
                      color: Colors.green.shade800,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: ' points',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Claim Rewards Title
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Claim Rewards',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),

          SizedBox(height: 8),

          // Rewards List
          Expanded(
            child: ListView.builder(
              itemCount: rewards.length,
              itemBuilder: (context, index) {
                return RewardCard(reward: rewards[index]);
              },
            ),
          ),
        ],
      ),

     // bottomNavigationBar: BottomNav(), // Custom Bottom Navigation Bar
    );
  }
}

/// Reward Card Widget
class RewardCard extends StatelessWidget {
  final Reward reward;

  RewardCard({required this.reward});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Card(
        color: Colors.green.shade50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: ListTile(
          leading: Image.asset(
            reward.logo,
            width: 50,
            height: 50,
            fit: BoxFit.contain,
          ),
          title: Text(
            reward.description,
            style: TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
          subtitle: Text(
            '${reward.pointsRequired} points',
            style: TextStyle(color: Colors.green.shade800),
          ),
          trailing: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green.shade300,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Text(
              'Claim',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}