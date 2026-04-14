import 'package:ex_app/helper/api.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OtpController extends GetxController {
  List<TextEditingController> controllers =
      List.generate(6, (_) => TextEditingController());

  Future<void> verifyOtp(String phone) async {
    String otp = controllers.map((c) => c.text).join();

    final data = await Api().post(
      url: 'http://10.0.2.2:8000/api/verify_otp',
      body: {
        'phone_Number': phone,
        'otp': otp,
      },
      token: null,
    );

    // إذا كان الـ OTP صحيح → ننتقل للصفحة الرئيسية
    Get.offAllNamed('/home');
  }
}
