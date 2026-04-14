import 'package:ex_app/models/models.dart';
import 'package:flutter/material.dart';

class CleckcatagoryPage extends StatelessWidget {
  const CleckcatagoryPage({super.key,required this.restaurant});
final Models restaurant;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
children: [

Text(' phone : ${restaurant.phone}'),
Text('address :${restaurant.address} '),
Text('isActive :${restaurant.is_active}'),
Text('open at : ${restaurant.opens_at} and close at ${restaurant.closes_at}'),

],




    );
  }
}