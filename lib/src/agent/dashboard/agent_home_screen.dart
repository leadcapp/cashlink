import 'package:cashlink/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../components/app_bars/home_app_bar.dart';

class AgentHomeScreen extends StatelessWidget {
  static const routeName = '/agent_home';


   AgentHomeScreen({super.key});


  final List<String> actions = [
    'Send Money',
    'Receive Money',
    'Request Money',
    'Cashout',
    'Pay Bills',
    'Buy Airtime',
  ];


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      
      appBar: HomeAppBar(
        onProfileTap: () {

          },
      ),
      body: Column(
        children: [

          QuickActionsRow()
        ],
      ),


    );
  }
}




class QuickActionsRow extends StatelessWidget {
  final List<Map<String, String>> actions = [
    {"icon": "assets/svg/cashIn.svg", "label": "Cash in"},
    {"icon": "assets/svg/cashOut.svg", "label": "Cash out"},
    {"icon": "assets/svg/airTime.svg", "label": "Airtime"},
    {"icon": "assets/svg/TransactionHistory.svg", "label": "Transaction History"},
    {"icon": "assets/svg/Coupon.svg", "label": "Coupon"},
  ];

  QuickActionsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: actions.map((action) {
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: GestureDetector(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('${action["label"]} clicked')),
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 55,
                      width: 60,
                      decoration: BoxDecoration(
                        color: const Color(0xffF3E7E7),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 1,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          action["icon"]!,
                          height: 28,
                          width: 28,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    SizedBox(
                      width: 67,
                      height: 40,
                      child: Text(
                        action["label"]!,
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 11.5,
                          fontWeight: FontWeight.w500,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}