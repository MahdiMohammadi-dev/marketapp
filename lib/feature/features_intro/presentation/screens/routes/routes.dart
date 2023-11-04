import 'package:flutter/material.dart';
import 'package:marketapp/feature/features_intro/presentation/screens/home_screen.dart';
import 'package:marketapp/feature/features_intro/presentation/screens/intro_main_wrapper.dart';
import 'package:marketapp/feature/features_intro/presentation/screens/routes/screen_name.dart';
import 'package:marketapp/feature/features_intro/presentation/screens/splah_screen.dart';

Map<String, Widget Function(BuildContext)> routes = {
  ScreenName.root: (context) => const SplashScreen(),
  ScreenName.introMainWrapper: (context) => IntroMainWrapper(),
  ScreenName.homeScreen: (context) => const HomeScreen(),
};
