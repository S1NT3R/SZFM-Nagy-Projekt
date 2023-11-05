import 'package:flutter/material.dart';
import 'package:step_app/src/resources/theme/application_style.dart';

class Style {
  static ThemeData themeData(BuildContext context) {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      fontFamily: "Inconsolata",
      primaryColor: ApplicationStyle.primaryColor,
      scaffoldBackgroundColor: Colors.transparent,
      colorScheme: ColorScheme.fromSwatch().copyWith(
        secondary: ApplicationStyle.white,
      ),
      listTileTheme: const ListTileThemeData(
        horizontalTitleGap: 0,
        contentPadding: EdgeInsets.zero,
        style: ListTileStyle.drawer,
        // /dense: true,
        visualDensity: VisualDensity(vertical: -2),
        titleTextStyle: TextStyle(
          color: ApplicationStyle.primaryColor,
          fontSize: 18,
          fontWeight: FontWeight.w400,
          letterSpacing: 1.04,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          textStyle: const TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.w400,
            color: ApplicationStyle.white,
            letterSpacing: 1.05,
          ),
          shadowColor: Colors.transparent,
          minimumSize: const Size(99999999, ApplicationStyle.buttonHeight),
          shape: RoundedRectangleBorder(
            borderRadius: ApplicationStyle.borderRadiusCircular,
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        fillColor: ApplicationStyle.primaryColor,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: ApplicationStyle.borderRadiusCircular,
          borderSide: const BorderSide(
            width: 1.5145,
            color: ApplicationStyle.textColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: ApplicationStyle.borderRadiusCircular,
          borderSide: const BorderSide(
            width: 1.5145,
            color: ApplicationStyle.textColor,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: ApplicationStyle.borderRadiusCircular,
          borderSide: const BorderSide(
            width: 1.5145,
            color: ApplicationStyle.textColor,
          ),
        ),
      ),
      textTheme: const TextTheme(
        titleMedium: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: ApplicationStyle.textColor,
        ),
        labelMedium: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w300,
          color: ApplicationStyle.textColor,
        ),
        displaySmall: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w300,
          color: ApplicationStyle.textColor,
        ),
        displayMedium: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: ApplicationStyle.textColor,
        ),
      ),
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: ApplicationStyle.textColor,
          letterSpacing: 1.03,
        ),
      ),
      // textButtonTheme: TextButtonThemeData(
      //   style: TextButton.styleFrom(
      //     textStyle: const TextStyle(
      //       fontSize: 18,
      //       fontWeight: FontWeight.w500,
      //       color: ApplicationStyle.black,
      //     ),
      //   ),
      // ),
      drawerTheme: const DrawerThemeData(
        backgroundColor: ApplicationStyle.primaryColor,
      ),
      dividerTheme: const DividerThemeData(
        thickness: 1.5,
        color: ApplicationStyle.textColor,
      ),
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: ApplicationStyle.processIndicatorColor,
      ),
    );
  }
}
