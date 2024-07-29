import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class HadeethViewDetails extends StatefulWidget {
  const HadeethViewDetails({super.key});

  @override
  State<HadeethViewDetails> createState() => _HadeethViewDetailsState();
}

class _HadeethViewDetailsState extends State<HadeethViewDetails> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    String content="";
    List<String> singleHadeth=[];
    Future<void> loadText() async
    {
      content=await rootBundle.loadString("assets/ahadeth/ahadeth");

      setState(() {
        singleHadeth=content.split("#");
      });
      print(content);
    }
    if(content.isEmpty) loadText();

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
                  Text("frgthyu"),
                  const Icon(Icons.play_circle_fill_rounded,color: Color(0xFF242424),)
                ],
              ),
              const Divider(),
              Expanded(
                child: ListView.builder(itemBuilder:(context,index)=>Text(

                ),
              )
            ],
          ),
        ),
      ),
    );;
  }
}
