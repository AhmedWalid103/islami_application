import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../core/settings_provider.dart';

class RadioView extends StatelessWidget {
  const RadioView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var lang = AppLocalizations.of(context)!;
    var provider=Provider.of<SettingsProvider>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
            child: Image.asset("assets/images/radio_image.png")
        ),
        Text(lang.eza3aElkor2anElkareem,style: theme.textTheme.bodyLarge,),
         Row(
          children: [
            Expanded(
              child: Icon(Icons.fast_rewind,
              color: provider.isLight()?const Color(0xFFB7935F):const Color(0xFFFACC1D) ,
              size: 25,),
            ),
            SizedBox(width: 20,),
            Expanded(
              child: Icon(Icons.play_arrow,
              color:provider.isLight()?const Color(0xFFB7935F):const Color(0xFFFACC1D) ,
              size: 50,),
            ),
            SizedBox(width: 20,),
            Expanded(
              child: Icon(Icons.fast_forward,
              color: provider.isLight()?const Color(0xFFB7935F):const Color(0xFFFACC1D) ,
              size: 25,),
            )
          ],
        )
      ],
    );
  }
}
