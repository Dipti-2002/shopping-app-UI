import 'package:flutter/material.dart';
import 'package:task5/widget/login_page.dart';
import 'package:task5/widget/onboarding_page.dart';
//import 'package:task5/onlinepayment_page.dart';
import 'package:task5/widget/signUp_page.dart';
import 'package:task5/widget/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: SplashScreen(),   // LoginPage(),//OnboardingPage() ,//const SignupPage(),
    );
  }
}



  

  
 
