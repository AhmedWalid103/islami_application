

import 'package:flutter/material.dart';
class SettingsProvider extends ChangeNotifier
{
  String currentLanguage= "en";
  ThemeMode currentTheme = ThemeMode.light;
  void chosenLanguage(String selectedLanguage)
  {
    currentLanguage=selectedLanguage;
    notifyListeners();
  }
  void chosenTheme(ThemeMode selectedTheme)
  {
    currentTheme=selectedTheme;
    notifyListeners();
  }

  String getHomeBackground()
  {
    return currentTheme==ThemeMode.light
        ?"assets/core/background1.png"
        :"assets/core/home_dark_background.png";
  }
  String getSplash()
  {
    return currentTheme==ThemeMode.light
        ?"assets/images/splash.png"
        :"assets/images/splash – 1.png";
  }
 bool isLight()
 {
   return currentTheme==ThemeMode.light;
 }


}

