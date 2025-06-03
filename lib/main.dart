import 'package:cashlink/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'src/app.dart';

GetIt locator = GetIt.instance;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initLocator();
  runApp(const MyApp());
}

initLocator() {
  locator.registerLazySingleton<AuthService>(
    () => AuthService(),
  );
}
