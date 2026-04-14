import 'package:ex_app/controller/OtpController.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OtpController());

    // استلام رقم الهاتف من صفحة التسجيل
    final phone = Get.arguments['phone'];

    return Scaffold(
      appBar: AppBar(title: Text('OTP')),
      body: Column(
        children: [
          SizedBox(height: 20),
          Text("أدخل رمز OTP المرسل إلى $phone"),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(6, (i) {
              return SizedBox(
                width: 40,
                child: TextField(
                  controller: controller.controllers[i],
                  textAlign: TextAlign.center,
                  maxLength: 1,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(counterText: ''),
                ),
              );
            }),
          ),

          SizedBox(height: 20),

          ElevatedButton(
            onPressed: () {
              controller.verifyOtp(phone);
            },
            child: Text("تأكيد"),
          ),
        ],
      ),
    );
  }
}
