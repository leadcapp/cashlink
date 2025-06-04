import 'package:cashlink/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../components/app_bars/home_app_bar.dart';

class AgentHomeScreen extends StatelessWidget {
  static const routeName = '/agent_home';


  const AgentHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      
      appBar: HomeAppBar(
        onProfileTap: () {

          },
      ),
      body: Center(
        child: Text(
          'Welcome to the Agent Dashboard',
        ),
      ),


    );
  }
}
