import 'package:flutter/material.dart';
import '../view/homepage.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:shimmer/shimmer.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: Shimmer.fromColors(
          baseColor: Colors.white,
          highlightColor: Color.fromARGB(255, 84, 190, 239),
          child: Center(
            child: Text(
              "NewsPortalMY",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        nextScreen: Homepage(),
        duration: 2000,
        splashTransition: SplashTransition.fadeTransition,
        pageTransitionType: PageTransitionType.fade,
        backgroundColor: Colors.blueGrey,
      ),
    );
  }
}
