
import 'package:ex_app/view/otpPage.dart';
import 'package:ex_app/view/signInPage.dart';
import 'package:ex_app/widget/custumButtom.dart';
import 'package:ex_app/widget/custumText.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class Loginpage extends StatelessWidget {
   Loginpage({super.key});
 String? productName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

   body: SafeArea(child: SingleChildScrollView(
child: Column(
  children: [
SizedBox(height: 10,),
  Center(
    child: Text(
                          'Log in to your account',
                          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.w600,
                            color: Colors.blue.shade600,
                          ),
                        ),
  ),

    SizedBox(height: 100),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CustomText(
                    hintText: 'Phone Number',
                    // onChanged: (data) {
                    //   productName = data;
                    // },
                  ),
                ),
SizedBox(height: 10,),

//    Align(
//                 //  alignment: Alignment.centerRight,
//                   child: TextButton(
//                   onPressed: () {
//   Get.to(() => const OtpScreen());
// },
//                     child: Text(
//                       'Enter OTP',
//                       style: TextStyle(
//                         color: Colors.blue.shade600,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                   ),
//                 ),

Padding(
  padding: const EdgeInsets.all(20.0),
  child: CustomButton(text: 'enter',onTap: () {
    Get.to(OtpPage());
  
    
  },),
),


SizedBox(height: 10,),
Padding(
  padding: const EdgeInsets.all(20.0),
  child: CustomButton(text: 'continue with google',onTap: () {
    //Get.to(OtpScreen());
  
    
  },),
),

SizedBox(height: 10,),

   Align(
                //  alignment: Alignment.centerRight,
                  child: TextButton(
                    
                  onPressed: () {
  Get.to(() => const Signin());
},
                    child: Text(
                      'Sign in',
                      style: TextStyle(
                        color: Colors.blue.shade600,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),



  ],
),




   )),




    );
  }
}