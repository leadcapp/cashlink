import 'package:cashlink/src/login/login_view.dart';
import 'package:flutter/material.dart';

import '../src/agent/dashboard/agent_home_screen.dart';

Widget routeNavigator(String routeName) {
  switch (routeName) {
    case LoginView.routeName:
      return const LoginView();
      case AgentHomeScreen.routeName:
      return AgentHomeScreen();

    default:
      return const LoginView();
  }
}
