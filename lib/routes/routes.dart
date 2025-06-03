import 'package:cashlink/src/login/login_view.dart';
import 'package:flutter/material.dart';

Widget routeNavigator(String routeName) {
  switch (routeName) {
    case LoginView.routeName:
      return const LoginView();

    default:
      return const LoginView();
  }
}
