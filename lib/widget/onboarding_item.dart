import 'package:flutter/material.dart';

class OnboardingItem extends StatelessWidget{
  final String image;
  
  const OnboardingItem({
    super.key,
    required this.image,
    
    });
  
  @override
  Widget build(BuildContext context) {
   return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Center(child: Image.asset("lib/images/$image"),),
      const SizedBox(height: 20,),
      
    ],
   );
  }

  
}