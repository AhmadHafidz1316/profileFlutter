import 'package:flutter/material.dart';
import 'package:profile/controller/ProductsController.dart'; // Import controller Products
import 'package:profile/model/ProductsModel.dart'; // Import model Products

class SchoolPage extends StatelessWidget {
  final ProductsController productsController = ProductsController(); // Buat instance dari ProductsController

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Product List"),
        ),
        body: FutureBuilder<List<Products>>(
          future: productsController.fetchProducts(), // Panggil function fetchProducts dari ProductsController
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return Center(child: Text('No Product Found'));
            } else {
              final products = snapshot.data!;
              return ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(products[index].title),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(products[index].description),
                        Text(products[index].category),
                      ],
                    ),
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}
