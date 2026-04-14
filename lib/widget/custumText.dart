import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
   CustomText({required this.hintText,this.onChanged,this.inputType});
String? hintText;
Function(String)? onChanged;
TextInputType? inputType;
  @override
  Widget build(BuildContext context) {
    return TextField(

      onChanged: onChanged,
     keyboardType:inputType ,
  decoration: InputDecoration(
hintText: hintText,

enabledBorder: OutlineInputBorder(
borderRadius: BorderRadius.circular(16),
borderSide: BorderSide(
  
 // color: Colors.black12,
),
),
border: OutlineInputBorder(
borderSide: BorderSide(
  color: Colors.white,
),


),




  ),
);
  }
}