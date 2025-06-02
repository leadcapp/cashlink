import 'package:package_info_plus/package_info_plus.dart';

class AuthService {
  //access token
  String? accessToken;
  void setAccessToken(String? token) {
    accessToken = token;
  }

  //refresh token
  String? refreshToken;
  void setRefreshToken(String? token) {
    refreshToken = token;
  }

  //company Data

//is new user check
  bool isNewUser = true;
  void setIsNewUser(bool value) {
    isNewUser = value;
  }

//sign in method
  String? signInMethod;
  void setSignInMethod(String? value) {
    signInMethod = value;
  }

//sign in credential
  String? signInCredential;
  void setSignInCredential(String? value) {
    signInCredential = value;
  }

  String? currency;
  void setCurrencySymbol(String data) {
    currency = data;
  }

  String? buildVersion;
  Future<void> getAppVersion() async {
    final packageInfo = await PackageInfo.fromPlatform();
    buildVersion = '${packageInfo.version}+${packageInfo.buildNumber}';
  }

  String? fcmToken;
  void setFcmToken(String? token) {
    fcmToken = token;
  }

  //CHat
  String? currentChatId;
  void setCurrentChatId(String? chatId) {
    currentChatId = chatId;
  }
}
