import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

//Project File
import 'login_page.dart';
import 'package:finmon_project/gradient_theme.dart';

//This simulates a splash screen
class SpalshScreen extends StatelessWidget {
  const SpalshScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientContainer(
      child: AnimatedSplashScreen(
        splash: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/flutter_icon.png'),
          ],
        ),
        backgroundColor: Colors.transparent,
        nextScreen: const Login(title: 'Finmon App'),
        splashIconSize: 200,
        duration: 3500,
        splashTransition: SplashTransition.fadeTransition,
        pageTransitionType: PageTransitionType.fade,
        animationDuration: const Duration(milliseconds: 1000),
      ),
    );
  }
}
