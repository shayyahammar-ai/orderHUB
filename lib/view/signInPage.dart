import 'package:ex_app/controller/SigninController.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SigninController());

    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Sign in'))),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 30),
            Text('Sign in your account', style: TextStyle(fontSize: 20)),

            TextField(
              decoration: InputDecoration(hintText: 'Name'),
              onChanged: (v) => controller.name.value = v,
            ),
            SizedBox(height: 10),

            TextField(
              decoration: InputDecoration(hintText: 'Phone'),
              onChanged: (v) => controller.phone.value = v,
            ),
            SizedBox(height: 10),

            TextField(
              decoration: InputDecoration(hintText: 'Email'),
              onChanged: (v) => controller.email.value = v,
            ),
            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                controller.register();
              },
              child: Text('Create'),
            ),
          ],
        ),
      ),
    );
  }
}
