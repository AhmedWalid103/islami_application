
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:islami_app/modules/quran/quran-view.dart';
import 'package:provider/provider.dart';

import '../core/settings_provider.dart';
class QuranViewDetails extends StatefulWidget {
  const QuranViewDetails({super.key});
  static const String routeName = "q";
  @override
  State<QuranViewDetails> createState() => _QuranViewDetailsState();
}

class _QuranViewDetailsState extends State<QuranViewDetails> {
  String content = "";
  List<String> lines=[];
  Future<void> loadText(String suraNumber) async {
    content = await rootBundle.loadString("assets/files/$suraNumber.txt");
    lines=content.split("\n");
    setState(() {
     // content = text;
    });
    print(content);
  }
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var data  = ModalRoute.of(context)?.settings.arguments as SuraData ;
    var provider=Provider.of<SettingsProvider>(context);

    if(content.isEmpty) loadText(data.suraNumber);
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(provider.getHomeBackground()),
          fit: BoxFit.cover)
        ),
      child: Scaffold(
        appBar: AppBar(title:const Text("إسلامي"),
        ),
        body: Container(
          margin:const EdgeInsets.only(
            top: 30,
            bottom: 30,
            right: 30,
            left: 30,
          ),
          padding: const EdgeInsets.only(
              top: 20,
              bottom: 20,
              right: 30,
              left: 30,
          ),
          decoration: BoxDecoration(
            color: provider.isLight()? const Color(0xFFF8F8F8):const Color(0xFF141A2E).withOpacity(0.5),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  Text(data.suraName,style: TextStyle(
                      color: provider.isLight()?const Color(0xFF242424):const Color(0xFFFACC1D)
                  ),),
                  Icon(Icons.play_circle_fill_rounded,color:provider.isLight()?const Color(0xFF242424):const Color(0xFFFACC1D) ,)
                ],
              ),
              const Divider(),
               Expanded(
                 child: ListView.builder(itemBuilder:(context,index)=>Text(
                   lines[index],
                   style: theme.textTheme.bodySmall?.copyWith(height: 2,
                       color: provider.isLight()?const Color(0xFF242424):const Color(0xFFFACC1D)),
                   textAlign: TextAlign.center,),
                   itemCount: lines.length,

                 ),
               )
              ],
        ),
        ),
      ),
    );
  }
}

