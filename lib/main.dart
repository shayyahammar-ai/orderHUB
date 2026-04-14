import 'package:ex_app/view/HomePage.dart';
import 'package:ex_app/view/loginPage.dart';
import 'package:ex_app/view/otpPage.dart';
import 'package:ex_app/view/signInPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


// test
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
initialRoute: '/',

// test ammar
      getPages: [
  GetPage(     name: '/',  page: () => Loginpage(),  ),
          GetPage(name: '/', page: () => Signin()),
        GetPage(name: '/otp', page: () => OtpPage()),

        
    GetPage(name: '/home', page: () => Homepage()),





      ]





    );
  }
}
// add comm line 466
