import 'package:flutter/material.dart';
import 'package:sustainify/model/rewardModel.dart';
import 'package:sustainify/utils/colors.dart';
import 'package:sustainify/utils/font.dart';

class RewardPage extends StatefulWidget {
  @override
  _RewardPageState createState() => _RewardPageState();
}

class _RewardPageState extends State<RewardPage> {
  // List of rewards
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

  int _currentPoints = 300; // Store the current points

  // Redeem reward logic
  void _redeemReward(Reward reward) {
    if (_currentPoints >= reward.pointsRequired) {
      setState(() {
        _currentPoints -= reward.pointsRequired; // Deduct points on redeem
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Reward redeemed!')),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Not enough points to redeem this reward')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          
          children: [
            // Points Display
            Container(
              padding: EdgeInsets.symmetric(vertical:12),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '$_currentPoints',
                      style: TextStyle(
                        color: AppColors.greenappBar, 
                        fontFamily: AppFonts.inter, 
                        fontSize: 70,
                        fontWeight: AppFonts.interSemiBoldWeight,

                      ),
                    ),
                    TextSpan(
                      text: ' points',
                      style: TextStyle(          
                      fontFamily: AppFonts.inter, 
                        fontSize: 42,
                        fontWeight: AppFonts.interSemiBoldWeight,
                        color: AppColors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Claim Rewards Title
             Container(
              padding: EdgeInsets.symmetric(vertical: 13),
              child: Align(
                alignment: Alignment.centerLeft,  
                child: Text(
                  'Claim Rewards',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),

            SizedBox(height: 8),
            // List of reward cards
            Expanded(
              child: ListView.builder(
                itemCount: rewards.length,
                itemBuilder: (context, index) {
                  return RewardCard(
                    reward: rewards[index],
                    redeemReward: _redeemReward,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class RewardCard extends StatelessWidget {
  final Reward reward;
  final Function(Reward) redeemReward;

  const RewardCard({
    Key? key,
    required this.reward,
    required this.redeemReward,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      color: Colors.green.shade100, 
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
          
            Image.asset(
              reward.logo,
              width: 100, 
              height: 100,
              fit: BoxFit.contain,
            ),
            SizedBox(width: 16),
           
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  Text(
                    reward.description,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 8),
                 
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 6, vertical: 3),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.green.shade800, 
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          '${reward.pointsRequired} points',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.green.shade800,
                          ),
                        ),
                      ),
                        SizedBox(width: 15,),
                      
                      ElevatedButton(
                        onPressed: () => redeemReward(reward),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.darkGreen,
                          minimumSize: Size(30, 30), 
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text(
                          'Claim',
                          style: TextStyle(
                            fontSize: 12,
                            color: AppColors.white,
                          ),
                        ),
                      ),
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
