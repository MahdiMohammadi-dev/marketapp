import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketapp/config/my_theme.dart';
import 'package:marketapp/feature/features_intro/presentation/bloc/splash_cubit/splash_cubit.dart';
import 'package:marketapp/feature/features_intro/presentation/screens/routes/routes.dart';
import 'package:marketapp/feature/features_intro/presentation/screens/routes/screen_name.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:marketapp/locator.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initLocator();
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
      locale: Locale("fa", ""),
      supportedLocales: const [
        Locale("en", ""), // English, no country code
        Locale("fa", ""), // English, no country code
      ],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      theme: MyThemes.lightTheme,
      darkTheme: MyThemes.darkTheme,
      themeMode: ThemeMode.light,
      initialRoute: ScreenName.root,
      routes: routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
