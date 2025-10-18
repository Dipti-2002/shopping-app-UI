import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Customtextfield extends StatelessWidget{
  final String label;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final String ? Function(String?)?validator;
  final bool obscureText;
  final IconData icon;
  final prefixText;
  const Customtextfield({
    super.key,
    required this.label,
    required this.controller,text,
    this.obscureText = false,
     required this.keyboardType,
      this.validator, required this.icon,
      this.prefixText,
  
  });
  
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
   return Padding(
    padding: const EdgeInsets.symmetric(vertical:8.0),
    child: SizedBox(
      width:screenWidth*0.7, 
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
         
        maxLength: 30,
        maxLengthEnforcement: MaxLengthEnforcement.enforced,
        controller:controller,
        keyboardType: keyboardType,
        obscureText: obscureText ,
        validator: validator,
        decoration: InputDecoration(
        labelText:label,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
       // suffixIcon: Icon(icon),
        prefixIcon: Icon(icon),
        prefixText: prefixText,
        ),


      ),
      ),
   );
  }
}
 
 
