import 'package:flutter/foundation.dart';

class Models {
  final String? name;
  final String? logo;
  final String? description;
  final String? phone;
  final String? address;
  final int? is_active;
  final String? opens_at;
  final String? closes_at;

  Models({
    required this.name,
    required this.logo,
    required this.description,
    required this.phone,
    required this.address,
    required this.is_active,
    required this.opens_at,
    required this.closes_at,
  });

  factory Models.fromJson(jsonData) {
    return Models(
      name: jsonData['name'],
      logo: jsonData['logo'],
      description: jsonData['description'],
      phone: jsonData['phone'],
      address: jsonData['address'],
      is_active: jsonData['is_active'],
      opens_at: jsonData['opens_at'],
      closes_at: jsonData['closes_at'],
    );
  }
}







