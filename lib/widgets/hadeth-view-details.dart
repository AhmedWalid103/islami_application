import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/modules/hadith/hadith-view.dart';
import 'package:provider/provider.dart';

import '../core/settings_provider.dart';

class HadeethViewDetails extends StatefulWidget {
   HadeethViewDetails({super.key, });
  static const String routeName = "h";
// Use aliases to refer to the specific class
  @override
  State<HadeethViewDetails> createState() => _HadeethViewDetailsState();
}
class _HadeethViewDetailsState extends State<HadeethViewDetails> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var provider=Provider.of<SettingsProvider>(context);
    final  data = ModalRoute.of(context)!.settings.arguments as HadeethData;
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
                  Text(data.hadeethName,style: TextStyle(
                      color: provider.isLight()?const Color(0xFF242424):const Color(0xFFFACC1D)
                  ),),
                ],
              ),
              const Divider(),
              Expanded(
                child: SingleChildScrollView(
                  child: Text(
                    data.hadeethContent,
                    style: theme.textTheme.bodySmall?.copyWith(height: 2,
                    color: provider.isLight()?const Color(0xFF242424) :const Color(0xFFFACC1D)),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
