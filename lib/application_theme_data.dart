import 'package:flutter/material.dart';

class ApplicationThemeData {
  static const Color primaryColor=Color(0xFFB7935F);
 static  ThemeData lightThemeData = ThemeData(
   appBarTheme: const AppBarTheme(
     centerTitle: true,
     backgroundColor: Colors.transparent,
     titleTextStyle: TextStyle(
         fontFamily: "El Messiri",
         fontSize: 30,
         fontWeight: FontWeight.bold,
     color: Color(0xFF242424)),
   ),
    scaffoldBackgroundColor: Colors.transparent,
   bottomNavigationBarTheme: const BottomNavigationBarThemeData(
     backgroundColor: Color(0xFFB7935F),
     selectedItemColor: Colors.black,
     unselectedItemColor: Color(0xFFF8F8F8),
        ),
   textTheme: const TextTheme(
     titleLarge: TextStyle(
       fontFamily: "El Messiri",
       fontSize: 30,
       fontWeight: FontWeight.bold,
     ),
     bodyLarge: TextStyle(
       fontFamily: "El Messiri",
       fontSize: 25,
       fontWeight: FontWeight.w600,
     ),
     bodyMedium: TextStyle(
       fontFamily: "El Messiri",
       fontSize: 25,
       fontWeight: FontWeight.w400,
     ),
     bodySmall: TextStyle(
       fontFamily: "El Messiri",
       fontSize: 20,
       fontWeight: FontWeight.w400,
     ),
     displaySmall:  TextStyle(
       fontFamily: "El Messiri",
       fontSize: 12,
       fontWeight: FontWeight.w400,
     ),
   ),
   dividerTheme: const DividerThemeData(
     color:primaryColor,
     thickness: 2,
   )
  );
}