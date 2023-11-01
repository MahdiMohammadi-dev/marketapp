import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketapp/feature/features_intro/presentation/bloc/splash_cubit/splash_cubit.dart';
import 'package:marketapp/feature/features_intro/presentation/screens/routes/routes.dart';
import 'package:marketapp/feature/features_intro/presentation/screens/routes/screen_name.dart';
import 'package:marketapp/feature/features_intro/presentation/splah_screen.dart';

void main() {
  runApp(
    MultiBlocProvider(
        providers: [BlocProvider(create: (_) => SplashCubit())],
        child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: ScreenName.root,
      routes: routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
