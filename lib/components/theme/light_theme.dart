import 'package:cashlink/components/constants.dart';
import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData(
  fontFamily: fontFamily,
  primaryColor: const Color(0xFFD32F2F),
  colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: const Color(0xFF00AEA2),
      onPrimary: Colors.white,
      secondary: const Color(0xff333F49),
      onSecondary: Colors.white,
      error: const Color(0xffAB0F3E),
      onError: Colors.white,
      surface: const Color(0xff333F49),
      onSurface: Colors.white,
      onSurfaceVariant: const Color(0xffF4F4F4),
      surfaceContainer: const Color(0xff9DB2CE).withValues(alpha: 0.5),
      tertiary: const Color(0xff656262).withValues(alpha: 0.7)),
  indicatorColor: const Color(0xffD9D9D9),
  cardColor: Colors.white,
  iconTheme: const IconThemeData(color: Color(0xff82A5A2)),
  primaryColorDark: const Color(0xff284974),
  dividerColor: const Color(0xffEDEEF3),
  highlightColor: Colors.transparent,
  splashColor: Colors.transparent,
  scaffoldBackgroundColor: const Color(0xffF7F7F7),
  dividerTheme: const DividerThemeData(color: Color(0xffF1F1F1), thickness: 1),
  hintColor: const Color(0xff656262).withValues(alpha: 0.7),
  canvasColor: Colors.white,
  useMaterial3: true,
  appBarTheme: AppBarTheme(
    backgroundColor: const Color(0xff1B1A1B),
    iconTheme: const IconThemeData(color: Color.fromARGB(255, 244, 244, 246)),
    actionsIconTheme: const IconThemeData(color: Color(0xff171718)),
    surfaceTintColor: Colors.transparent,
    shadowColor: Colors.black.withValues(alpha: 0.4),
    scrolledUnderElevation: 3,
    elevation: 0,
    titleTextStyle: const TextStyle(
      color: Color.fromARGB(255, 248, 248, 249),
      fontWeight: FontWeight.w700,
      fontFamily: fontFamily,
      fontSize: 18,
    ),
  ),
  buttonTheme: ButtonThemeData(
    buttonColor: const Color(0xff3365A6),
    disabledColor: const Color(0xff3365A6).withValues(alpha: 0.5),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(6.0)),
    ),
    textTheme: ButtonTextTheme.accent,
    colorScheme: const ColorScheme.light(
      secondary: Colors.white,
      primary: Color(0xff3365A6),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
    elevation: WidgetStateProperty.all<double?>(0.0),
    textStyle: WidgetStateProperty.resolveWith<TextStyle?>(
      (Set<WidgetState> states) => const TextStyle(
          fontSize: 15,
          fontFamily: fontFamily,
          fontWeight: FontWeight.w500,
          color: Color(0xff12A096)),
    ),
    foregroundColor: WidgetStateProperty.resolveWith<Color?>(
      (Set<WidgetState> states) => const Color(0xff12A096),
    ),
    side: WidgetStateProperty.all<BorderSide?>(
        const BorderSide(color: Color(0xff12A096), width: 1)),
    shape: WidgetStateProperty.all<OutlinedBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0), // Define border radius
      ),
    ),
  )),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: const Color(0xffFCFCFC),
    isDense: true,
    hintStyle: const TextStyle(
      color: Color(0xff878CA7),
      fontSize: 13,
      fontWeight: FontWeight.w500,
      fontFamily: fontFamily,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: const BorderSide(
        color: Color(0xffEDEEF3),
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: const BorderSide(
        color: Color(0xffEDEEF3),
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: const BorderSide(
        color: Colors.red,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: const BorderSide(
        color: Colors.red,
      ),
    ),
    errorStyle: const TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w500,
      fontSize: 14,
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: const BorderSide(
        color: Color(0xffEDEEF3),
      ),
    ),
    contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 13),
  ),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
      color: Color(0xff333F49),
      fontSize: 15,
      fontWeight: FontWeight.w500,
    ),
    bodySmall: TextStyle(
        color: Color(0xff323442),
        fontSize: 13,
        fontWeight: FontWeight.w500,
        fontFamily: fontFamily,
        letterSpacing: 0.1),
    displaySmall: TextStyle(
      color: Color(0xff606060),
      fontWeight: FontWeight.w500,
      fontSize: 13,
    ),
    displayMedium: TextStyle(
      color: Color(0xff333F49),
      fontWeight: FontWeight.w700,
      fontSize: 15,
    ),
  ).apply(
    bodyColor: const Color(0xff4E4E4E),
    fontFamily: fontFamily,
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Color(0xff12A096),
    foregroundColor: Colors.white,
    elevation: 1,
  ),
  popupMenuTheme: PopupMenuThemeData(
    iconColor: Colors.black,
    elevation: 0.0,
    color: Colors.white,
    textStyle: const TextStyle(color: Colors.black),
    shadowColor: Colors.black.withValues(alpha: 0.5),
    shape: RoundedRectangleBorder(
      side: const BorderSide(
        color: Color(0xFFE8ECF4),
      ),
      borderRadius: BorderRadius.circular(10.0),
    ),
  ),
  bottomSheetTheme: BottomSheetThemeData(
    backgroundColor: const Color(0xffF3F3F3),
    modalBarrierColor: const Color(0xff434343).withValues(alpha: 0.3),
    clipBehavior: Clip.antiAliasWithSaveLayer,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(0.0),
        topRight: Radius.circular(0.0),
      ),
    ),
  ),
  dialogBackgroundColor: const Color(0xffF3F3F3),
  drawerTheme: const DrawerThemeData(
    backgroundColor: Colors.white,
    shape: RoundedRectangleBorder(),
  ),
  datePickerTheme: DatePickerThemeData(
    backgroundColor: Colors.white,
    shadowColor: Colors.transparent,
    headerForegroundColor: const Color(0xFF333F49),
    dayForegroundColor: WidgetStateProperty.all<Color>(Colors.black),
    rangePickerHeaderForegroundColor: Colors.black,
    yearForegroundColor: WidgetStateProperty.all<Color>(Colors.black),
    dividerColor: Colors.black,
    weekdayStyle: const TextStyle(color: Colors.black),
    headerHeadlineStyle: const TextStyle(color: Colors.black),
    headerHelpStyle: const TextStyle(color: Colors.black),
    yearStyle: const TextStyle(color: Colors.black),
    dayStyle: const TextStyle(color: Colors.black),
    inputDecorationTheme: const InputDecorationTheme(
      labelStyle: TextStyle(color: Colors.black),
      hintStyle: TextStyle(color: Colors.grey),
    ),
    yearOverlayColor: WidgetStateProperty.all<Color>(Colors.black),
    todayForegroundColor: WidgetStateProperty.all<Color>(Colors.black),
  ),
  timePickerTheme: const TimePickerThemeData(
    backgroundColor: Colors.white,
  ),
  chipTheme: const ChipThemeData(backgroundColor: Colors.white),
  checkboxTheme: const CheckboxThemeData(
    side: BorderSide(color: Color(0xFF00B6A9), width: 1.5),
    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
  ),
);
