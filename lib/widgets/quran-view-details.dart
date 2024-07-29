
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:islami_app/modules/quran/quran-view.dart';
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
    if(content.isEmpty) loadText(data.suraNumber);
    return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/core/background1.png"),
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
            color: const Color(0xFFF8F8F8).withOpacity(0.9),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  Text(data.suraName),
                  const Icon(Icons.play_circle_fill_rounded,color: Color(0xFF242424),)
                ],
              ),
              const Divider(),
               Expanded(
                 child: ListView.builder(itemBuilder:(context,index)=>Text(
                   lines[index],
                   style: theme.textTheme.bodySmall?.copyWith(height: 2),
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

