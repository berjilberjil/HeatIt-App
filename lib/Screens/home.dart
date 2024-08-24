
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Heat It'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Handle search action
            },
          ),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         title: const Text('Food Ordering App'),
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.search),
//             onPressed: () {
//               // Handle search action
//             },
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // Search Bar
//               TextField(
//                 decoration: InputDecoration(
//                   hintText: 'Search for food...',
//                   prefixIcon: const Icon(Icons.search),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(8.0),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 20),
//               // Categories
//               const Text(
//                 'Categories',
//                 style: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               const SizedBox(height: 10),
//               SizedBox(
//                 height: 100,
//                 child: ListView(
//                   scrollDirection: Axis.horizontal,
//                   children: [
//                     _buildCategoryItem('Pizza',
//                         'https://www.foodiesfeed.com/wp-content/uploads/2023/06/burger-with-melted-cheese.jpg'),
//                     _buildCategoryItem('Burger',
//                         'https://www.foodiesfeed.com/wp-content/uploads/2023/06/burger-with-melted-cheese.jpg'),
//                     _buildCategoryItem('Sushi',
//                         'https://www.foodiesfeed.com/wp-content/uploads/2023/06/burger-with-melted-cheese.jpg'),
//                     _buildCategoryItem('Dessert',
//                         'https://www.foodiesfeed.com/wp-content/uploads/2023/06/burger-with-melted-cheese.jpg'),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 20),
//               // Popular Items
//               const Text(
//                 'Popular Items',
//                 style: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               const SizedBox(height: 10),
//               GridView.builder(
//                 shrinkWrap: true,
//                 physics: const NeverScrollableScrollPhysics(),
//                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2,
//                   crossAxisSpacing: 10,
//                   mainAxisSpacing: 10,
//                   childAspectRatio: 0.8,
//                 ),
//                 itemCount: 4,
//                 itemBuilder: (context, index) {
//                   return _buildPopularItem(
//                     'Food Item $index',
//                     'https://www.foodiesfeed.com/wp-content/uploads/2023/06/burger-with-melted-cheese.jpg',
//                     '\$${(index + 1) * 5}',
//                   );
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.shopping_cart),
//             label: 'Cart',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: 'Profile',
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildCategoryItem(String title, String imageUrl) {
//     return Container(
//       margin: const EdgeInsets.only(right: 10),
//       width: 80,
//       child: Column(
//         children: [
//           CircleAvatar(
//             backgroundImage: NetworkImage(imageUrl),
//             radius: 30,
//           ),
//           const SizedBox(height: 5),
//           Text(
//             title,
//             style: const TextStyle(fontSize: 14),
//             textAlign: TextAlign.center,
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildPopularItem(String title, String imageUrl, String price) {
//     return Card(
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           ClipRRect(
//             borderRadius: const BorderRadius.only(
//               topLeft: Radius.circular(10),
//               topRight: Radius.circular(10),
//             ),
//             child: Image.network(
//               imageUrl,
//               height: 100,
//               width: double.infinity,
//               fit: BoxFit.cover,
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Text(
//               title,
//               style: const TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 8.0),
//             child: Text(
//               price,
//               style: const TextStyle(
//                 fontSize: 14,
//                 color: Colors.red,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
