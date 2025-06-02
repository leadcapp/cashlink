import 'package:flutter_dotenv/flutter_dotenv.dart';

class Config {
  static const int buildNumber = 1;
  static final baseUrl = dotenv.env['baseUrl'] ?? '';
//firebase - android
  static final androidApiKey = dotenv.env['ANDROID_API_KEY'] ?? '';
  static final androidAppID = dotenv.env['ANDROID_APP_ID'] ?? '';
  static final androidMessagingSenderId =
      dotenv.env['ANDROID_MESSAGE_SENDER_ID'] ?? '';
  static final androidProjectID = dotenv.env['ANDROID_PROJECT_ID'] ?? '';

//firebase - IOS
  static final iosApiKey = dotenv.env['IOS_API_KEY'] ?? '';
  static final iosAppID = dotenv.env['IOS_APP_ID'] ?? '';
  static final iosMessagingSenderId = dotenv.env['IOS_MESSAGE_SENDER_ID'] ?? '';
  static final iosProjectID = dotenv.env['IOS_PROJECT_ID'] ?? '';
}
