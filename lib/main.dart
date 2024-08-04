import 'package:flutter/material.dart';
import 'package:islami_app/core/application_theme_data.dart';
import 'package:islami_app/layout_view.dart';
import 'package:islami_app/splashView.dart';
import 'package:islami_app/widgets/hadeth-view-details.dart';
import 'package:islami_app/widgets/quran-view-details.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import 'core/settings_provider.dart';
void main() {
 runApp(ChangeNotifierProvider(
   create: (context) => SettingsProvider(),
     child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<SettingsProvider>(context);
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'islami',
      locale:Locale(provider.currentLanguage),
      themeMode: provider.currentTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales:AppLocalizations.supportedLocales,
      theme:ApplicationThemeData.lightThemeData,
      darkTheme: ApplicationThemeData.DarkThemeData,
      initialRoute: "/",
      routes:
      {
        SplashView.routeName:(context)=>const SplashView(),
        LayoutView.routeName:(context)=>const LayoutView(),
        QuranViewDetails.routeName:(context)=> QuranViewDetails(),
        HadeethViewDetails.routeName:(context)=> HadeethViewDetails(),
      },

    );
  }
}

