import 'package:flutter/material.dart';

class OnboardingEntity {
  final String title;
  final String description;
  final String image;
  final int index;
  const OnboardingEntity({
    
    required this.title,
    required this.description,
    required this.image,
     required this. index, 
    });
    static List<OnboardingEntity>onBoardingData = [
      OnboardingEntity(
        title: "ONLINE PAYMENT", description: 
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor.',
       image: "onlinepayment.jpg",
       index: 0,
       ),
       OnboardingEntity(title: "ONLINE SHOPPING",
       description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor.", 
       image: "online shopping.jpg",
       index: 1,
       ),
       OnboardingEntity(title: "HOME DELIVER SERVICE",
        description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor.",
        image: "pana.jpg",
        index: 2,),

    ];
 
}