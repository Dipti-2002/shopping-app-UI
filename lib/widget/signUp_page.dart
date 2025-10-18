import 'package:flutter/material.dart';
import 'package:task5/widget/customTextfield.dart';
import 'package:task5/widget/home_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task5/widget/login_page.dart';
import 'package:task5/widget/otpverification.dart';

class SignupPage extends StatefulWidget {
  final email;
  final password;
  final repeatpassword;
  final phone;

  const SignupPage({
    super.key,
    this.email,
    this.password,
    this.repeatpassword,
    this.phone,
  });
  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _formkey = GlobalKey<FormState>();
  final emailcontroller = TextEditingController();
  final SpecialCharactercontroller = TextEditingController();
  final repeatpasswordcontroller = TextEditingController();
  final phonecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      //backgroundColor: Colors.white10,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Text(
                  "Create Account",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 15),
              Text(
                "Sign Up",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 0.08, vertical: 0.05),
                child: Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      Customtextfield(
                        label: "Email",
                        controller: emailcontroller,
                        keyboardType: TextInputType.emailAddress,
                        icon: Icons.email,
                        validator: (value) =>
                            value != null && value.contains("@")
                            ? null
                            : "Enetr valid Email",
                      ),
                      Customtextfield(
                        label: "Special Character",
                        controller: SpecialCharactercontroller,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        icon: Icons.password,
                        validator: (value) => value == null || value.isEmpty
                            ? "plaese Enter password"
                            : null,
                      ),
                      Customtextfield(
                        label: "Repeat password",
                        controller: repeatpasswordcontroller,
                        keyboardType: TextInputType.visiblePassword,
                        icon: Icons.password,
                        obscureText: true,
                        validator: (value) => value == null || value.isEmpty
                            ? "please enter password"
                            : null,
                      ),
                      Customtextfield(
                        label: " +244 Mobile Number",
                        controller: phonecontroller,
                        keyboardType: TextInputType.number,
                        icon: Icons.phone,
                        
                        prefixText: "+91",
                        validator: (value) => value == null || value.isEmpty
                            ? "Enter your Number"
                            : null,
                      ),
                      SizedBox(height: 40),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(
                            horizontal: 160,
                            vertical: 20,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                        onPressed: () {
                          if (_formkey.currentState!.validate()) {
                            print("email:${emailcontroller.text}");
                            print(
                              "password: ${SpecialCharactercontroller.text}",
                            );
                            print(
                              "repearpassword: ${repeatpasswordcontroller.text}",
                            );
                            print("phone: ${phonecontroller.text}");
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Otpverification(),
                              ),
                            );
                          }
                        },
                        child: const Text(
                          "Next",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Or Continue With",
                        style: TextStyle(fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 100,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 15,
                        ),
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {
                        print("Apple button");
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children:  [
                          Container(
                            width: 30,
                            height: 30,
                            child: Icon(
                              FontAwesomeIcons.apple,
                              color: Colors.black,
                              size: 26,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Apple",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Container(
                    width: 100,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 15,
                        ),
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {
                        print("Google Button");
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children:  [
                          Container(
                            width: 30,
                            height: 30,
                            child: Icon(
                              FontAwesomeIcons.google,
                              color: Colors.red,
                              size: 26,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Google",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Container(
                    width: 100,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 15,
                        ),
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {
                        print("Facebook Button");
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children:  [
                          Container(
                            height: 30,
                            width: 30,
                            child: Icon(
                              FontAwesomeIcons.facebook,
                              color: Colors.blue,
                              size: 25,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Facebook",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
