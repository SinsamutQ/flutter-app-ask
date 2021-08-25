import 'package:app_ask/constants.dart';
import 'package:flutter/material.dart';

// This is our  main focus
// Let's apply light and dark theme on our app
// Now let's add dark theme on our app

ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: Colors.white,
    // appBarTheme: appBarTheme,
    iconTheme: IconThemeData(color: kContentColorLightTheme),
    // textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
    //     .apply(bodyColor: kContentColorLightTheme),
    colorScheme: ColorScheme.light(
      primary: kPrimaryColor,
      secondary: kSecondaryColor,
      error: kErrorColor,
    ),
    
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,

      //when buttom select
      selectedItemColor: kContentColorLightTheme.withOpacity(1),

      //button not selected
      //defalut (0.32)
      unselectedItemColor: kContentColorLightTheme.withOpacity(0.6),
      selectedIconTheme: IconThemeData(color: kPrimaryColor),
      showUnselectedLabels: true,
    ),
  );
}