import 'package:flutter/material.dart';
import 'package:task5/widget/login_page.dart';
import 'package:task5/widget/onboardingEntity.dart';
import 'package:task5/widget/onboarding_item.dart';

class OnboardingPage extends StatelessWidget{
   OnboardingPage({super.key});

  final List<OnboardingEntity>_onBoardingData = 
  OnboardingEntity.onBoardingData;
  
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    backgroundColor:  Color(0xFF1A9EB7),
    body: PageView.builder(
      itemCount: _onBoardingData.length,
      itemBuilder: (context,index){
        final data = _onBoardingData[index];
        return Column (
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(height: 50,),
            OnboardingItem(
              //_onBoardingData[index].description, 
          image: data.image,                //_onBoardingData[index].image,
          
          ),
          Container(
            width: double.infinity,
            height: 250,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(30),
              ),
            ),
            padding:EdgeInsets.symmetric(horizontal: 20, vertical: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    data.title,
                    style: TextStyle(fontSize: 22,
                    fontWeight:FontWeight.bold,
                    color: Colors.amber,
                     ),
                    ),
                ),
                  const SizedBox(height: 10,),
                  Text(
                    data.description,
                    style: TextStyle(fontSize: 15,
                    color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      TextButton(
                      onPressed:(){
                        print("skip print");
                      },
                       child: const Text("skip",
                       style: TextStyle(color: Colors.amber),
                       ),
                       ),
                       ElevatedButton(
                        onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()),
                         );

                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber,
                          shape: const CircleBorder(),
                          padding: const EdgeInsets.all(14),

                        ),
                        child: const Icon(Icons.arrow_forward_ios,
                        color: Colors.white,
                       
                        size: 20,),
                        ),
                        
                  
                    ],
                  )

              ],

            ),
          )
          ]
          
        
        );
      } ),

   );
  }
}