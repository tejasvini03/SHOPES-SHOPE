import 'package:flutter/material.dart';

void main() {
  runApp(ShoeShoppingApp());
}

class ShoeShoppingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shoe Shopping App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: ShoeHomePage(),
    );
  }
}

class ShoeHomePage extends StatelessWidget {
  final List<Map<String, String>> shoes = [
    {
      'image': 'assets/brown-leather-shoes_1203-8174.avif',
      'name': 'Running Shoes',
      'price': '\$89.99',
      'rating': '4.5',
    },
    {
      'image': 'assets/fashion-shoes-sneakers_1203-7529.avif',
      'name': 'Casual Sneakers',
      'price': '\$79.99',
      'rating': '4.0',
    },
    {
      'image': 'assets/pair-trainers_144627-3799.avif',
      'name': 'Formal Shoes',
      'price': '\$99.99',
      'rating': '4.8',
    },
    {
      'image': 'assets/fashion-shoes-sneakers_1203-7529.avif',
      'name': 'Basketball Shoes',
      'price': '\$119.99',
      'rating': '4.2',
    },
     {
      'image': 'assets/fashion-shoes-sneakers_1203-7529.avif',
      'name': 'Basketball Shoes',
      'price': '\$119.99',
      'rating': '4.2',
    },
     {
      'image': 'assets/pair-trainers_144627-3799.avif',
      'name': 'Formal Shoes',
      'price': '\$99.99',
      'rating': '4.8',
    },
     {
      'image': 'assets/brown-leather-shoes_1203-8174.avif',
      'name': 'Running Shoes',
      'price': '\$89.99',
      'rating': '4.5',
    },
    {
      'image': 'assets/pair-trainers_144627-3799.avif',
      'name': 'Formal Shoes',
      'price': '\$99.99',
      'rating': '4.8',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shoe Store'),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
      ),
      body: Column(
        children: [
          // Hero Section
          Container(
            height: 270,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/sport-running-shoes_1203-3414.avif'), // Replace with your hero image
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.black.withOpacity(0.6), Colors.transparent],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
              child: Center(
                child: Text(
                  'Find Your Perfect Fit',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 16),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(16),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 0.65,
              ),
              itemCount: shoes.length,
              itemBuilder: (context, index) {
                return ShoeCard(shoe: shoes[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ShoeCard extends StatelessWidget {
  final Map<String, String> shoe;

  ShoeCard({required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
    
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
            child: Image.asset(
              shoe['image']!,
              fit: BoxFit.cover,
              height:100,
              width: double.infinity,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  shoe['name']!,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  shoe['price']!,
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.amber, size: 18),
                    SizedBox(width: 4),
                    Text(
                      shoe['rating']!,
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () {
                    // Implement onPressed functionality
                  },
                  style: ElevatedButton.styleFrom(
                    iconColor: Colors.orangeAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text('Add to Cart'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
