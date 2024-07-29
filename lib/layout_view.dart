import 'package:flutter/material.dart';
import 'package:islami_app/modules/hadith/hadith-view.dart';
import 'package:islami_app/modules/quran/quran-view.dart';
import 'package:islami_app/modules/radio/radio-view.dart';
import 'package:islami_app/modules/sebha/sebha-view.dart';
import 'package:islami_app/modules/settings/settings-view.dart';



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
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/core/background1.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        body: screensList[selectedIndex],
        appBar: AppBar(
          title: const Text("إسلامي"),
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
          items: const [
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/icons/radio_blue.png")),
              label: "Radio",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/icons/sebha.png")),
              label: "Sebha",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/icons/hadeeth.png")),
              label: "Hadeeth",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/icons/moshaf_gold.png")),
              label: "Quran",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings, size: 30),
              label: "Settings",
            ),
          ],
        ),
      ),
    );
  }
}


