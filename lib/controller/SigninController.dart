import 'package:ex_app/helper/api.dart';
import 'package:get/get.dart';

class SigninController extends GetxController {
  var name = ''.obs;
  var phone = ''.obs;
  var email = ''.obs;

  Future<void> register() async {
    final data = await Api().post(
      url: 'http://10.0.2.2:8000/api/register',
      body: {
        'name': name.value,
        'phone_Number': phone.value,
        'email': email.value,
      },
      token: null,
    );

    // إذا نجح التسجيل → ننتقل لصفحة OTP
    Get.toNamed('/otp', arguments: {
      'phone': phone.value,
    });
  }
}
