import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task5/widget/home_page.dart';
import 'package:task5/widget/signUp_page.dart';

class Otpverification  extends StatelessWidget{
  const Otpverification({super.key});
  
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    backgroundColor: Colors.white,
    appBar: AppBar(
      backgroundColor: Colors.white,
      leading: IconButton( icon: Icon(Icons.arrow_back_ios_new, color: Colors.blue,),
      onPressed: (){
        Navigator.pop(context);
      },
      ),
      
    ),
    body: Padding(
      padding: const EdgeInsets.all(8.0),
      
      child: Column(
        children: [
          // Padding(
          //   padding:EdgeInsets.only(top: 60), 
          //   ),
          
          Container(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("OTP Verification",
              style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,
              color: Colors.black),
              ),
            ),
          ),
          SizedBox(height: 10,),
          
          Center(
            child: Text("Enter the verfication code we just sent on your\n email address.",
            style: TextStyle(fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.grey),),
          ),
          SizedBox(height: 20,),
          Form(
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 50,
                  height: 50,
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    onChanged: (value){
                      if(value.length == 1){
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    keyboardType: TextInputType.number,
                    inputFormatters: [LengthLimitingTextInputFormatter(1)],
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      filled: true,
                      fillColor: Colors.amberAccent,
                    ),
                    
                  ),
                ),
                 SizedBox(
                  width: 50,
                  height: 50,
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    onChanged: (value){
                      if(value.length == 1){
                        FocusScope.of(context).nextFocus();
                      }
                      },
                    keyboardType: TextInputType.number,
                    inputFormatters: [LengthLimitingTextInputFormatter(1)],
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      filled: true,
                      fillColor: Colors.amberAccent,
                    ),
                    
                  ),
                ),
                 SizedBox(
                  width: 50,
                  height: 50,
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    onChanged: (value){
                      if(value.length == 1){
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    keyboardType: TextInputType.number,
                    inputFormatters: [LengthLimitingTextInputFormatter(1)],
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      filled: true,
                      fillColor: Colors.amberAccent,
                    ),
                    
                  ),
                ),
                 SizedBox(
                  width: 50,
                  height: 50,
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    onChanged: (value){
                      if(value.length == 1){
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    keyboardType: TextInputType.number,
                    inputFormatters: [LengthLimitingTextInputFormatter(1)],
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      filled: true,
                      fillColor: Colors.amberAccent,
                    ),
                    
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 55,),
        ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(315, 60),
                  backgroundColor: Color(0xFF1A9EB7),
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                onPressed: () {
                 // print("VERIFIED");
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()),
                 );
                },
                child: Text(
                  "VERIFY",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
                ),
              ),
        ],
      ),
    ),
  
   );
  }
}