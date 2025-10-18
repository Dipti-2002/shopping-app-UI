import 'dart:async';

import 'package:flutter/material.dart';
import 'package:task5/widget/onboarding_page.dart';

class SplashScreen  extends StatefulWidget{
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState(){
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>OnboardingPage()));
    });
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
   return Scaffold(
    backgroundColor: Colors.white,
    body: Container(
       color: const Color.fromRGBO(255, 255, 255, 1),
       child: Center(
        child: Image.asset("lib/images/uxe.png",
        width: size.width/3),
       ),


    ),
   );
  }
}

