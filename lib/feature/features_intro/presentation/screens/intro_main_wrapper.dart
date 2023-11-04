import 'package:delayed_widget/delayed_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketapp/common/utils/prefs_operator.dart';
import 'package:marketapp/feature/features_intro/presentation/bloc/intro_cubit/cubit/intro_cubit.dart';
import 'package:marketapp/feature/features_intro/presentation/screens/routes/screen_name.dart';
import 'package:marketapp/feature/features_intro/presentation/widgets/get_start_btn.dart';
import 'package:marketapp/feature/features_intro/presentation/widgets/intro_page.dart';
import 'package:marketapp/gen/assets.gen.dart';
import 'package:marketapp/locator.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroMainWrapper extends StatelessWidget {
  IntroMainWrapper({super.key});

  List<Widget> introPages = [
    IntroPage(
      title: 'شخص حرف اول و میزنه',
      description: 'کیفیت و زمانت اصالت کالا',
      image: Assets.images.png.benz.path,
    ),
    IntroPage(
      title: 'آسان خرید و فروش کن',
      description: 'خرید و فروش با پشتیبانی قوی',
      image: Assets.images.png.bmw.path,
    ),
    IntroPage(
      title: 'همه چی اینجا هست',
      description: 'تنوع محصولات و کالا؛همون چیزی که میخوای',
      image: Assets.images.png.tara.path,
    ),
  ];
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    // final args = ModalRoute.of(context)!.settings.arguments;
    var size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) => IntroCubit(),
      child: Builder(builder: (context) {
        return Scaffold(
          body: Stack(
            children: [
              ///TODO:Yellow Background
              Positioned(
                  top: 0,
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(150),
                        )),
                    width: size.width,
                    height: size.height * 0.6,
                  )),

              ///TODO:pageview Section
              Positioned(
                  bottom: size.height * 0.1,
                  child: SizedBox(
                      width: size.width,
                      height: size.height * 0.9,
                      child: PageView(
                        children: introPages,
                        controller: pageController,
                        onPageChanged: (value) {
                          if (value == 2) {
                            BlocProvider.of<IntroCubit>(context)
                                .changeGetStart(true);
                          } else {
                            BlocProvider.of<IntroCubit>(context)
                                .changeGetStart(false);
                          }
                        },
                      ))),

              ///TODO:Button Section
              Positioned(
                  bottom: size.height * 0.07,
                  right: 30,
                  child: BlocBuilder<IntroCubit, IntroState>(
                    builder: (context, state) {
                      if (state.showGetStart) {
                        return GetStartBtn(
                            text: 'شروع کنید',
                            onTap: () {
                              PrefsOperator prefsOperator = locator();
                              prefsOperator.changeIntroState();
                              Navigator.pushNamedAndRemoveUntil(
                                  context,
                                  ScreenName.homeScreen,
                                  ModalRoute.withName(ScreenName.homeScreen));
                            });
                      } else {
                        return DelayedWidget(
                            child: GetStartBtn(
                                text: 'ورق بزن',
                                onTap: () {
                                  if (pageController.page!.toInt() < 2) {
                                    if (pageController.page!.toInt() == 1) {
                                      BlocProvider.of<IntroCubit>(context)
                                          .changeGetStart(true);
                                    }
                                    pageController.animateToPage(
                                        pageController.page!.toInt() + 1,
                                        duration:
                                            const Duration(milliseconds: 400),
                                        curve: Curves.easeIn);
                                  }
                                }));
                      }
                    },
                  )),

              ///TODO:Smooth Page indicator section
              Positioned(
                bottom: size.height * 0.07,
                left: 30,
                child: DelayedWidget(
                  delayDuration:
                      const Duration(milliseconds: 300), // Not required
                  animationDuration: const Duration(seconds: 1), // Not required
                  animation:
                      DelayedAnimations.SLIDE_FROM_BOTTOM, // Not required
                  child: SmoothPageIndicator(
                    controller: pageController,
                    count: 3,
                    effect: const ExpandingDotsEffect(
                        dotWidth: 10,
                        dotHeight: 10,
                        spacing: 5,
                        activeDotColor: Colors.amber),
                  ),
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}
