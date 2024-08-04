import 'dart:developer';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/settings_provider.dart';
class SettingsView extends StatelessWidget {
  SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var lang = AppLocalizations.of(context)!;
    var provider=Provider.of<SettingsProvider>(context);

    List<String> language = [
     lang.english,
      lang.arabic
    ];
    List<String> themeMode = [
      lang.light,
      lang.dark,
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(lang.language,style: theme.textTheme.bodyLarge,),
    CustomDropdown<String>(
    hintText: 'Select Language',
    items:language ,
      initialItem: provider.currentLanguage=="en"?language[0]:language[1],
    onChanged: (value) {
      if(value==lang.english)
        {
          provider.chosenLanguage("en");
        }
      if(value==lang.arabic)
        {
          provider.chosenLanguage("ar");
        }
    log('changing value to: $value');
    },
      decoration:CustomDropdownDecoration(
        closedFillColor: provider.isLight()?Colors.white:const Color(0xFF141A2E),
        closedSuffixIcon: Icon(Icons.arrow_drop_down,color:provider.isLight()?Colors.black:const Color(0xFFFACC1D),),
        expandedSuffixIcon: Icon(Icons.arrow_drop_up,color:provider.isLight()?Colors.black:const Color(0xFFFACC1D)),
        expandedFillColor: provider.isLight()?Colors.white:const Color(0xFF141A2E),
      ) ,

    ),
        const SizedBox(height: 20,),
        Text(lang.theme,style: theme.textTheme.bodyLarge,),
        CustomDropdown<String>(
          hintText: 'Select Theme',
          items: themeMode ,
          initialItem: provider.currentTheme==ThemeMode.dark?themeMode[1]:themeMode[0],
          onChanged: (value) {
            if(value==lang.light)
              {
                provider.chosenTheme(ThemeMode.light);
              }
            if(value==lang.dark)
              {
                provider.chosenTheme(ThemeMode.dark);
              }
            log('changing value to: $value');
          },
          decoration:CustomDropdownDecoration(
            closedFillColor: provider.isLight()?Colors.white:const Color(0xFF141A2E),
            closedSuffixIcon: Icon(Icons.arrow_drop_down,color:provider.isLight()?Colors.black:const Color(0xFFFACC1D),),
            expandedSuffixIcon: Icon(Icons.arrow_drop_up,color:provider.isLight()?Colors.black:const Color(0xFFFACC1D)),
            expandedFillColor: provider.isLight()?Colors.white:const Color(0xFF141A2E),
          ) ,
        ),
      ],
    );
  }
}
