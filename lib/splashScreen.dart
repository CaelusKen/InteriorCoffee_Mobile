// ignore_for_file: file_names

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:interior_coffee/features/authentication/screens/onboarding/onboarding.dart';
import 'package:interior_coffee/utils/constants/colors.dart';
import 'package:interior_coffee/utils/helpers/function_helper.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({ super.key });

  get splash => null;

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
          splash: Column(
            children: [
              Center(
                child: LottieBuilder.asset('assets/images/animations/splash.json'),
              ),
          ],
        ), nextScreen: OnBoardingScreen(),
        splashIconSize: 400,
        backgroundColor: THelperFunction.isDarkMode(context) ? TColors.dark : TColors.light,
      );
  }
}