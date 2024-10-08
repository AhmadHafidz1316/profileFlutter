import 'dart:convert';
import 'package:http/http.dart' as http;

class Products {
  final String id;
  final String title;
  final String description;
  final String category;

  Products(
      {required this.id,
      required this.title,
      required this.description,
      required this.category});

  factory Products.fromJson(Map<String, dynamic> json) {
    return Products(
        id: json['id'].toString(),
        title: json['title'],
        description: json['description'],
        category: json['category']);
  }
}


