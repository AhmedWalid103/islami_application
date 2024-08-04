import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../core/settings_provider.dart';

class SebhaView extends StatefulWidget {
  const SebhaView({super.key});

  @override
  State<SebhaView> createState() => _SebhaViewState();
}

class _SebhaViewState extends State<SebhaView> {
  double rotateAngle = 0.0;
  int count = 0  ; int index=0; int rotates=0;
  List<String> Doaa=[
    "سبحان الله",
    "الحمد لله",
    "الله اكبر"
  ];

  void rotateImage() {
    setState(() {
      rotateAngle += 0.1; // Increment the angle by 0.1 radians (about 5.7 degrees)
    });
  }

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<SettingsProvider>(context);
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context);
    var lang = AppLocalizations.of(context)!;

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min, // Minimize the column size to its children
            children: [
              Stack(
                children: [
                  Center(
                    child: Container(
                      decoration:  BoxDecoration(
                        image: DecorationImage(
                          image: provider.isLight()
                              ?const AssetImage("assets/images/head of seb7a.png")
                          :const AssetImage("assets/images/head of seb7a darl.png"),
                          scale: 1,
                        ),
                      ),
                      width: 50,
                      height: 50,
                    ),
                  ),
                  Center(
                    child: InkWell(
                      onTap: () {
                        rotateImage();
                        count++;
                        if(count==33)
                          {
                            count=0;
                            index++;
                            rotates++;
                          }
                        if(rotates==3)
                          {
                            index=0;
                          }
                      },
                      child: Transform.rotate(
                        angle: rotateAngle,
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: provider.isLight()
                                  ?const AssetImage("assets/images/body of seb7a.png")
                                  :const AssetImage("assets/images/dark body sebha.png"),
                            ),
                          ),
                          width: 232,
                          height: 234,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 20), // Add some spacing between items
          Text(
            lang.adadTasbehat,
            style: theme.textTheme.bodyLarge,
          ),
          const SizedBox(height: 10), // Add some spacing between items
          Container(
            width: 69, // Adjust the width as needed
            height: 81, // Adjust the height as needed
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color:provider.isLight()? const Color(0xFFB7935F):const Color(0xFF141A2E).withOpacity(0.5),
              borderRadius: BorderRadius.circular(25),
            ), // Center the text
            child: Text(
              count.toString(),
              style: TextStyle(
                color:provider.isLight()? Colors.black:Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(height: 20), // Add some spacing between items
          Container(
            width: 137,
            height: 51, // Adjust the height as needed
            alignment: Alignment.center, // Center the text
            child:  Text(
              Doaa[index],
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
            decoration: BoxDecoration(
              color: provider.isLight()?const Color(0xFFB7935F):const Color(0xFFFACC1D),
              borderRadius: BorderRadius.circular(25),
            ),
          ),
        ],
      ),
    );
  }
}
