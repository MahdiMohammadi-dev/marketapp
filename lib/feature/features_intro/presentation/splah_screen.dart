import 'package:delayed_widget/delayed_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:marketapp/common/utils/custom_snackbar.dart';
import 'package:marketapp/feature/features_intro/presentation/bloc/splash_cubit/splash_cubit.dart';
import 'package:marketapp/feature/features_intro/presentation/screens/routes/screen_name.dart';
import 'package:marketapp/gen/assets.gen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // goToHomePage();
    BlocProvider.of<SplashCubit>(context).checkConnectionEvent();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: DelayedWidget(
                animationDuration: const Duration(milliseconds: 3000),
                delayDuration: const Duration(milliseconds: 100),
                animation: DelayedAnimations.SLIDE_FROM_BOTTOM,
                child: Image.asset(
                  Assets.images.png.beseniorLogo.path,
                  height: size.height * 0.8,
                ),
              ),
            ),
            BlocConsumer<SplashCubit, SplashState>(
              builder: (context, state) {
                if (state.connectionStatus is ConnectionInitial ||
                    state.connectionStatus is ConnectionOn) {
                  return LoadingAnimationWidget.twoRotatingArc(
                      color: Colors.red, size: 50);
                } else if (state.connectionStatus is ConnectionOff) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "به اینترنت متصل نیستید!",
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                            fontFamily: 'vazir',
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.red),
                      ),
                      IconButton(
                          onPressed: () {
                            BlocProvider.of<SplashCubit>(context)
                                .checkConnectionEvent();
                          },
                          icon: const Icon(
                            Icons.autorenew,
                            color: Colors.red,
                          ))
                    ],
                  );
                }
                return Container();
              },
              listener: (context, state) {
                if (state.connectionStatus is ConnectionOn) {
                  goToHomePage();
                }
              },
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }

  Future<void> goToHomePage() {
    return Future.delayed(const Duration(seconds: 3), () {
      // CustomSnackBar.showsnack(context, 'وارد شدید', Colors.green);
      Navigator.pushNamed(
        context,
        ScreenName.introMainWrapper,
      );
    });
  }
}
