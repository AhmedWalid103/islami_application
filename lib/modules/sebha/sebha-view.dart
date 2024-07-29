import 'package:flutter/material.dart';
class SebhaView extends StatelessWidget {
  const SebhaView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Center(
      child: Text("Sebha View",
        style:theme.textTheme.titleLarge,),
    );
  }
}
