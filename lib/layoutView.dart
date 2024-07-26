import 'package:flutter/material.dart';
import 'package:islami_app/layoutView.dart';
import 'package:islami_app/splashView.dart';

class LayoutView extends StatefulWidget {
 const LayoutView({super.key});
  static const String routeName = "!";

  @override
  _LayoutViewState createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  int selectedIndex = 0;
  List<Widget> screensList=[
    const Center(child: Text('Radio Screen', style: TextStyle( fontFamily: "El Messiri",
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Color(0xFF242424)),),),
    const Center(child: Text('Sebha Screen',style: TextStyle( fontFamily: "El Messiri",
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Color(0xFF242424)),)),
    const Center(child: Text('Hadeeth Screen',style: TextStyle( fontFamily: "El Messiri",
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Color(0xFF242424)),)),
    const Center(child: Text('Quran Screen',style: TextStyle( fontFamily: "El Messiri",
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Color(0xFF242424)),)),
    const Center(child: Text('Settings Screen',style: TextStyle( fontFamily: "El Messiri",
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Color(0xFF242424)),)),
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
              icon: ImageIcon(AssetImage("assets/icons/quran.png")),
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
