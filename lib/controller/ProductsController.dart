import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:profile/model/ProductsModel.dart'; // Import model Products

class ProductsController {
  Future<List<Products>> fetchProducts() async {
    final response =
        await http.get(Uri.parse('https://dummyjson.com/products'));

    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);
      List<dynamic> productsJson =
          jsonResponse['products']; // Ambil list dari key 'products'
      return productsJson.map((product) => Products.fromJson(product)).toList();
    } else {
      throw Exception('Failed to load products');
    }
  }
}
