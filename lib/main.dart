import 'package:flutter/material.dart';
import 'package:islami_app/application_theme_data.dart';
import 'package:islami_app/layoutView.dart';
import 'package:islami_app/splashView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'islami',
      theme:ApplicationThemeData.lightThemeData,
      initialRoute: "/",
      routes:
      {
        SplashView.routeName:(context)=>const SplashView(),
        LayoutView.routeName:(context)=>const LayoutView(),
      }
    );
  }
}

