import 'package:ex_app/controller/getallInfoService.dart';
import 'package:ex_app/models/models.dart';
import 'package:ex_app/view/catagoryListview.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder<List<Models>>(
        future: GetAllInfoService().getAllInfoService(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          }

          if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text("No Data Found"));
          }

          final restaurants = snapshot.data!;

          return ListView.builder(
            itemCount: restaurants.length,
            itemBuilder: (context, index) {
              return Catagorylistview(
                restaurant: restaurants[index],   // ← هذا هو السطر 28
              );
            },
          );
        },
      ),
    );
  }
}






































// import 'package:ex_app/view/catagoryListview.dart';
// import 'package:flutter/material.dart';

// class Homepage extends StatelessWidget {
//   const Homepage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: catagoryListview(),



//     );

   
//   }
// }

// class catagoryListview extends StatelessWidget {
//   const catagoryListview({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(itemCount: 10,itemBuilder: (context, index) {
//       return  Catagorylistview(restaurant: ,);
//     },
//     );
//   }
// }
















 // return Column(
    //   mainAxisAlignment: MainAxisAlignment.start,

    //   children: [
    //     SizedBox(height: 40),
    //     ClipRRect(
    //       borderRadius: BorderRadius.circular(6),
    //       child: Image.network(
    //         'https://upload.wikimedia.org/wikipedia/commons/9/99/Sample_User_Icon.png',
    //         height: 200,
    //         width: double.infinity,
    //        // fit: BoxFit.cover,
    //       ),
    //     ),

    //     SizedBox(height: 12),
    //     Text(
    //       'Large date shoud be Large date shoud bebb',
    //       maxLines: 2,
    //       overflow: TextOverflow.ellipsis,
    //       style: TextStyle(fontSize: 20, color: Colors.black),
    //     ),
    //     SizedBox(height: 8),

    //     Text('here description    Large date shoud be Large date shoud be Large date shoud be ', 
    //     maxLines: 2,
    //     style: TextStyle(
    //       color: Colors.grey,
    //       fontSize: 12,
    //       ),
    //       ),
    //   ],
    // );