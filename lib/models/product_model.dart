import 'package:cloud_firestore/cloud_firestore.dart';

class ProductModel {
  String name;
  String priceType;
  List<dynamic> imageUrls;
  String maxPrice;
  String minPrice;
  String minDiscountedPrice;
  String productDescriPrion;

  ProductModel({
    required this.name,
    required this.priceType,
    required this.imageUrls,
    required this.maxPrice,
    required this.minPrice,
    required this.minDiscountedPrice,
    required this.productDescriPrion,
  });
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'price_type': priceType,
      'image_url': imageUrls,
      'max_price': maxPrice,
      'min_price': minPrice,
      'min_discounted_price': minDiscountedPrice,
      'product_descriprion': productDescriPrion,
    };
  }

  factory ProductModel.fromDocument(DocumentSnapshot doc) {
    String name = doc.get('name');
    String priceType = doc.get('priceType');
    List<dynamic> imageUrls = doc.get('image_urls');
    String maxPrice = doc.get('max_price');
    String minPrice = doc.get('min_price');
    String minDiscountedPrice = doc.get('min_discounted_price');
    String productDescriPrion = doc.get('product_descri_prion');

    return ProductModel(
      name: name,
      priceType: priceType,
      imageUrls: imageUrls,
      maxPrice: maxPrice,
      minPrice: minPrice,
      minDiscountedPrice: minDiscountedPrice,
      productDescriPrion: productDescriPrion,
    );
  }
}
