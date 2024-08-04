import 'package:flutter/material.dart';
import 'package:islami_app/modules/quran/quran-view.dart';
import 'package:islami_app/widgets/quran-view-details.dart';
import 'package:provider/provider.dart';

import '../core/settings_provider.dart';
class SuraDetails extends StatelessWidget {
  final SuraData data;
 const SuraDetails({super.key, required this.data});
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var provider=Provider.of<SettingsProvider>(context);
    return  Row(
      children: [
        Expanded(
          child: Text(data.versesNumber,
            style: theme.textTheme.bodyMedium,
            textAlign: TextAlign.center,),
        ),
        SizedBox( height: 50,
          child: VerticalDivider(
            color:provider.isLight()?const Color(0xFFB7935F):const Color(0xFFFACC1D),
            thickness: 2,
          ),
        ),
        Expanded(
          child: Text(data.suraName,
            style: theme.textTheme.bodyMedium,
            textAlign: TextAlign.center,
             ),
        ),
      ],
    );
  }
}
