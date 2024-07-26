import 'package:flutter/material.dart';

class ApplicationThemeData {
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

        )
  );

}