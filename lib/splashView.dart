import 'dart:async';
import 'package:flutter/material.dart';
import 'package:islami_app/layout_view.dart';
import 'package:provider/provider.dart';

import 'core/settings_provider.dart';
class SplashView extends StatefulWidget {
  const SplashView({super.key});
static const String routeName="/";
  @override
  State<SplashView> createState() => _SplashViewState();
}
class _SplashViewState extends State<SplashView> {
  @override
  @override
  void initState() {
    super.initState();// Call super.initState() first
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, LayoutView.routeName);
    });
  }
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<SettingsProvider>(context);
    return Image.asset(provider.getSplash(),
    fit: BoxFit.cover,);
  }
}
