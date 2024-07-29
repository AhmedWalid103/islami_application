import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class HadithView extends StatefulWidget {
  const HadithView({super.key});

  @override
  State<HadithView> createState() => _HadithViewState();
}

class _HadithViewState extends State<HadithView> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      children: [
        Image.asset("assets/core/hadith_header.png",scale: 1.2,height: 200,),
        const Divider(),
        Text("الأحاديث",style: theme.textTheme.bodyLarge,),
        const Divider(),
        Expanded(
          child: ListView.builder(itemBuilder: (context,index)=>InkWell(
            onTap: ()
            {

            },
            child:  Text("الحديث رقم${(index+1).toString()}",
            style: theme.textTheme.bodyMedium,
            textAlign: TextAlign.center,),
          ),
            //itemCount: singleHadeth.length,

          ),
        )
      ],
    );
  }
}

class hadethData
{


}