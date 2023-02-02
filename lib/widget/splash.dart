import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:newsportalmy/view/homepage.dart';
import 'package:page_transition/page_transition.dart';
import 'package:shimmer/shimmer.dart';
import 'package:newsportalmy/widget/login.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: Shimmer.fromColors(
          baseColor: Colors.white,
          highlightColor: const Color.fromARGB(255, 54, 180, 238),
          child: const Center(
            child: Text(
              "NewsPortalMY",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        nextScreen: const Homepage(),
        duration: 2000,
        splashTransition: SplashTransition.fadeTransition,
        pageTransitionType: PageTransitionType.fade,
        backgroundColor: const Color.fromARGB(222, 0, 40, 127),
      ),
    );
  }
}
