import 'package:flutter/material.dart';
import 'package:islami_app/modules/quran/quran-view.dart';
import 'package:islami_app/widgets/quran-view-details.dart';
class SuraDetails extends StatelessWidget {
  final SuraData data;
 const SuraDetails({super.key, required this.data});
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return  Row(
      children: [
        Expanded(
          child: Text(data.versesNumber,
            style: theme.textTheme.bodyMedium,
            textAlign: TextAlign.center,),
        ),
        const SizedBox( height: 50,
          child: VerticalDivider(
            color:Color(0xFFB7935F),
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
