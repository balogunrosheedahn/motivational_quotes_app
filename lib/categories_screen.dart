import 'package:flutter/material.dart';
import 'package:motivational_quotes_app/category_item.dart';
import 'data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Motivational Quotes"),
      ),
      body: GridView(
        padding:const EdgeInsets.all(24),
        children: QUOTES_CATEGORIES.map((categoryItem) => CategoryItem(
          categoryItem.title,
          categoryItem.color,
        )).toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3/2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
