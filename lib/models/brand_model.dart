import 'package:cloud_firestore/cloud_firestore.dart';

class BrandModel {
  String name;
  String imageUrl;

  BrandModel({
    required this.name,
    required this.imageUrl,
  });
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'image_url': imageUrl,
    };
  }

  factory BrandModel.fromDocument(DocumentSnapshot doc) {
    String name = doc.get('name');
    String imageUrl = doc.get('image_url');

    return BrandModel(
      name: name,
      imageUrl: imageUrl,
    );
  }
}
