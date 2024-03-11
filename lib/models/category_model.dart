import 'package:cloud_firestore/cloud_firestore.dart';

class CategoryModel {
  String name;
  String imageUrl;

  CategoryModel({
    required this.name,
    required this.imageUrl,
  });
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'image_url': imageUrl,
    };
  }

  factory CategoryModel.fromDocument(DocumentSnapshot doc) {
    String name = doc.get('name');
    String imageUrl = doc.get('image_url');

    return CategoryModel(
      name: name,
      imageUrl: imageUrl,
    );
  }
}
