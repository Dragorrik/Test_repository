import 'package:flutter/material.dart';
import 'package:test_flutter/widgets/product_card_widgets.dart';

class WomanProductsPage extends StatelessWidget {
  const WomanProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final squareSize = MediaQuery.of(context).size.shortestSide;

    return Scaffold(
      backgroundColor: Color(0XFFEEEEEE),
      appBar: AppBar(
        backgroundColor: Color(0XFFEEEEEE),
        title: Row(
          children: const [
            Text(
              'WOMAN',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            Icon(Icons.keyboard_arrow_down, color: Colors.black),
          ],
        ),
        actions: const [
          Icon(Icons.search, color: Colors.black),
          SizedBox(width: 10),
          Icon(Icons.shopping_bag_outlined, color: Colors.black),
          SizedBox(width: 10),
        ],
      ),
      floatingActionButton: Container(
        height: squareSize * 0.15,
        width: squareSize * 0.15,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Padding(
          padding: const EdgeInsets.all(13),
          child: Image.asset("assets/images/icons/t-shirt.png", width: 18),
        ),
        // Icon(
        //   Icons.filter_alt,
        //   color: Colors.white,
        //   size: squareSize * 0.075,
        // ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Filter Options
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _buildFilterOption("/// NEW",
                      color: Colors.white, bgColor: Colors.black),
                  const SizedBox(width: 6),
                  _buildFilterOption("BEST SELLERS"),
                  const SizedBox(width: 6),
                  _buildFilterOption("JACKETS"),
                  const SizedBox(width: 6),
                  _buildFilterOption("BLAZERS"),
                  const SizedBox(width: 6),
                  _buildFilterOption("LEGGINGS"),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          // Product Grid
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return const ProductCard(
                    imagePath: 'assets/images/products/lipstick.png',
                    title: 'Lipstick',
                    price: '99.99',
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFilterOption(String label,
      {Color color = Colors.black, Color bgColor = const Color(0XFFEEEEEE)}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: color,
        ),
      ),
    );
  }
}
