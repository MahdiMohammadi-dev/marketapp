import 'package:flutter/material.dart';
import 'package:marketapp/feature/features_intro/presentation/screens/intro_screen.dart';
import 'package:marketapp/feature/features_intro/presentation/screens/routes/screen_name.dart';
import 'package:marketapp/feature/features_intro/presentation/splah_screen.dart';

Map<String, Widget Function(BuildContext)> routes = {
  ScreenName.root: (context) => const SplashScreen(),
  ScreenName.introScreen: (context) => const IntorScreen(),
};
