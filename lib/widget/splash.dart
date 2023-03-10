import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:newsportalmy/widget/Authentication/register_page.dart';
import 'package:page_transition/page_transition.dart';
import 'package:shimmer/shimmer.dart';
import 'package:newsportalmy/widget/login.dart';

/*  INFO 4335 MOBILE APP DEVELOPMENT FINAL ASSESSMENT 

  Name : Zawad Wasik Ahmed
  Matric: 1912485 
  Name : Arief Iskandar Bin Shaffei
  Matric: 2010047
*/

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
        nextScreen: LoginPage(
          showRegisterPage: () {},
        ),
        duration: 2000,
        splashTransition: SplashTransition.fadeTransition,
        pageTransitionType: PageTransitionType.fade,
        backgroundColor: const Color.fromARGB(222, 0, 40, 127),
      ),
    );
  }
}

/*RegisterPage(
          showLoginPage: () {},
        ),*/

/*nextScreen: LoginPage(
          showRegisterPage: () {},
        ),*/