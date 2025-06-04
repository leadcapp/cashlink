import 'package:flutter/material.dart';
import 'package:cashlink/components/constants.dart';
import 'package:cashlink/components/theme/light_theme.dart';
import 'package:cashlink/routes/routes.dart';

final GlobalKey<ScaffoldMessengerState> rootScaffoldMessengerKey =
    GlobalKey<ScaffoldMessengerState>();
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

// the setState function here is a must to add
  void _onTranslatedLanguage(Locale? locale) {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Cashlink',
        theme: lightTheme,
        themeMode: ThemeMode.light,
        debugShowCheckedModeBanner: false,
        scaffoldMessengerKey: rootScaffoldMessengerKey,
        navigatorKey: navigatorKey,
        onGenerateRoute: (RouteSettings routeSettings) =>
            PageRouteBuilder<void>(
          settings: routeSettings,
          pageBuilder: (BuildContext context, Animation<double> animation,
                  Animation<double> secondaryAnimation) =>
              routeNavigator('/agent_home'),
          transitionsBuilder: (BuildContext context,
                  Animation<double> animation,
                  Animation<double> secondaryAnimation,
                  Widget child) =>
              child,
        ),
      );
}
