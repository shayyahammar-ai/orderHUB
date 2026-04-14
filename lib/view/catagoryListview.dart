import 'package:ex_app/models/models.dart';
import 'package:ex_app/view/cleckCatagoryPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class Catagorylistview extends StatelessWidget {
  const Catagorylistview({super.key, required this.restaurant});
  final Models restaurant;
  @override
  Widget build(BuildContext context) {
    
    return GestureDetector(
        onTap: () {
        Get.to(
          CleckcatagoryPage(
            restaurant: restaurant,
          ),
        );
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
      
        children: [
          SizedBox(height: 40),
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.network(
              restaurant.logo!,
              height: 100,
              width: 100,
             // fit: BoxFit.cover,
            ),
          ),
      
          SizedBox(height: 12),
          Text(
            restaurant.name!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
          SizedBox(height: 8),
      
          Text(restaurant.description!, 
          maxLines: 2,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 12,
            ),
            ),
        ],
      ),
    );
  }
}


/**
 * import 'package:ex_app/models/models.dart';
import 'package:ex_app/view/cleckCatagoryPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CatagoryListView extends StatelessWidget {
  final Models restaurant;

  const CatagoryListView({
    super.key,
    required this.restaurant,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(
          CleckcatagoryPage(
            restaurant: restaurant,
          ),
        );
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 40),
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.network(
              restaurant.logo,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            restaurant.name,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 20, color: Colors.black),
          ),
          const SizedBox(height: 8),
          Text(
            restaurant.description,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}

 */