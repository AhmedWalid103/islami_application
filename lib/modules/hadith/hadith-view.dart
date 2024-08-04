import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/widgets/hadeth-view-details.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HadithView extends StatefulWidget {
  const HadithView({super.key});

  @override
  State<HadithView> createState() => _HadithViewState();
}

class _HadithViewState extends State<HadithView> {
  late Future<void> _loadTextFuture;
  String content = "";
  List<String> hadeethNames=[];
  List<String> allHadeth = [];
  @override
  void initState() {
    super.initState();
    _loadTextFuture = loadText();
  }

  Future<void> loadText() async {
    content = await rootBundle.loadString("assets/files/ahadeth");
    setState(() {
      allHadeth = content.split("#");
    });
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var lang = AppLocalizations.of(context)!;
for(int i=1;i<allHadeth.length;i++)
  {
    hadeethNames.add( "${lang.hadithNumber}${(i).toString()}" );
  }
    return Column(
      children: [
        Image.asset(
          "assets/core/hadith_header.png",
          scale: 1.2,
          height: 200,
        ),
        const Divider(),
        Text(
          lang.ahadeeth,
          style: theme.textTheme.bodyLarge,
        ),
        const Divider(),
        Expanded(
          child: FutureBuilder<void>(
            future: _loadTextFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return const Center(child: Text("Error loading data"));
              } else {
                return ListView.builder(
                  itemCount: allHadeth.length-1,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          HadeethViewDetails.routeName,
                          arguments:HadeethData(hadeethName: hadeethNames[index], hadeethContent: allHadeth[index])

                        );
                      },
                      child: Text(
                        hadeethNames[index],
                        style: theme.textTheme.bodyMedium,
                        textAlign: TextAlign.center,
                      ),
                    );
                  },
                );
              }
            },
          ),
        ),
      ],
    );
  }
}
class HadeethData
{
  final String hadeethName;
  final String hadeethContent;
  HadeethData( {
    required this.hadeethName,
    required this.hadeethContent,
});




}
