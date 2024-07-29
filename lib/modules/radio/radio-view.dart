import 'package:flutter/material.dart';
class RadioView extends StatelessWidget {
  const RadioView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Center(
      child: Text("Radio View",
        style:theme.textTheme.titleLarge,),
    );
  }
}
