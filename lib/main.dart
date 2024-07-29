import 'package:flutter/material.dart';
import 'package:islami_app/application_theme_data.dart';
import 'package:islami_app/layout_view.dart';
import 'package:islami_app/splashView.dart';
import 'package:islami_app/widgets/quran-view-details.dart';

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
        QuranViewDetails.routeName:(context)=> QuranViewDetails(),
      }
    );
  }
}

