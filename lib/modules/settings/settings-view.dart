import 'package:flutter/material.dart';
class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Center(
      child: Text("Settings View",
        style:theme.textTheme.titleLarge,),
    );
  }
}
