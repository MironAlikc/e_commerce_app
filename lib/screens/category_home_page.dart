import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce_app/common_widget/circular_progress.dart';
import 'package:e_commerce_app/common_widget/grid_title.dart';
import 'package:e_commerce_app/models/category_model.dart';
import 'package:flutter/material.dart';

class CategoryHomePage extends StatefulWidget {
  const CategoryHomePage({super.key});

  @override
  State<CategoryHomePage> createState() => _CategoryHomePageState();
}

class _CategoryHomePageState extends State<CategoryHomePage> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getCategoryList(),
        builder: (context, AsyncSnapshot snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
            case ConnectionState.waiting:
              return const CircularProgress();
            default:
              if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else {
                return createListView(context, snapshot);
              }
          }
        });
  }
}

Widget createListView(BuildContext context, AsyncSnapshot snapshot) {
  List<CategoryModel> values = snapshot.data;

  return GridView.count(
    crossAxisCount: 3,
    padding: const EdgeInsets.all(1.0),
    childAspectRatio: 8.0 / 9.0,
    children: List<Widget>.generate(
      values.length,
      (index) {
        return GestureDetector(
          onTap: () {},
          child: GridTitle(
            name: values[index].name,
            imageUrl: values[index].imageUrl,
          ),
        );
      },
    ),
  );
}

Future<List<CategoryModel>> getCategoryList() async {
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  List<DocumentSnapshot> result = [];
  QuerySnapshot? response;

  response = await firebaseFirestore.collection('category').get();
  result = response.docs;

  return List<CategoryModel>.from(
    result.map(
      (item) => CategoryModel.fromDocument(item),
    ),
  ).toList();
}
