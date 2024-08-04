import 'package:flutter/material.dart';

class ApplicationThemeData {
  static const Color primaryColor=Color(0xFFB7935F);
  static const Color primaryColorDark=Color(0xFF141A2E);

 static  ThemeData lightThemeData = ThemeData(
   appBarTheme: const AppBarTheme(
     centerTitle: true,
     iconTheme: IconThemeData(color: Color(0xFF242424)),
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
  static  ThemeData DarkThemeData = ThemeData(
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        iconTheme: IconThemeData(color: Color(0xFFFFFFFF)),
        backgroundColor: Colors.transparent,
        titleTextStyle: TextStyle(
            fontFamily: "El Messiri",
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Color(0xFFF8F8F8)),
      ),
      scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: primaryColorDark,
        selectedItemColor: Color(0xFFFACC1D),
        unselectedItemColor: Color(0xFFF8F8F8),
      ),
      textTheme: const TextTheme(
        titleLarge: TextStyle(
          fontFamily: "El Messiri",
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),
        bodyLarge: TextStyle(
          fontFamily: "El Messiri",
          fontSize: 25,
          fontWeight: FontWeight.w600,
            color: Colors.white

        ),
        bodyMedium: TextStyle(
          fontFamily: "El Messiri",
          fontSize: 25,
          fontWeight: FontWeight.w400,
            color: Colors.white

        ),
        bodySmall: TextStyle(
          fontFamily: "El Messiri",
          fontSize: 20,
          fontWeight: FontWeight.w400,
            color: Colors.white

        ),
        displaySmall:  TextStyle(
          fontFamily: "El Messiri",
          fontSize: 12,
          fontWeight: FontWeight.w400,
            color: Colors.white
          
        ),
      ),
      dividerTheme: const DividerThemeData(
        color:Color(0xFFFACC1D),
        thickness: 2,
      )
  );

}