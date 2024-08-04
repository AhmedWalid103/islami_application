import 'package:flutter/material.dart';
import 'package:islami_app/modules/hadith/hadith-view.dart';
import 'package:islami_app/modules/quran/quran-view.dart';
import 'package:islami_app/modules/radio/radio-view.dart';
import 'package:islami_app/modules/sebha/sebha-view.dart';
import 'package:islami_app/modules/settings/settings-view.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import 'core/settings_provider.dart';


class LayoutView extends StatefulWidget {
 const LayoutView({super.key});
  static const String routeName = "!";

  @override
  _LayoutViewState createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  int selectedIndex = 0;
 List<Widget>screensList =[
   RadioView(),
   SebhaView(),
   HadithView(),
   QuranView(),
   SettingsView(),
 ];
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<SettingsProvider>(context);
    var lang = AppLocalizations.of(context)!;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(provider.getHomeBackground(),),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        body: screensList[selectedIndex],
        appBar: AppBar(
          title: Text(lang.islami)
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          //selectedLabelStyle: Theme.of(context).textTheme.displaySmall,
          onTap: (value) {
            setState(() {
              selectedIndex = value;
              setState(() {});
            });
          },
          type: BottomNavigationBarType.fixed,
          iconSize: 40.0,
          items:  [
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/icons/radio_blue.png")),
              label: lang.radio ,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/icons/sebha.png")),
              label: lang.sebha,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/icons/hadeeth.png")),
              label: lang.hadeth,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/icons/moshaf_gold.png")),
              label: lang.quran,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings, size: 30),
              label: lang.settings,
            ),
          ],
        ),
      ),
    );
  }
}


