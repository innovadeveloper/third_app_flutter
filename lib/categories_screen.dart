import 'package:flutter/material.dart';
import 'package:third_app/category_item.dart';
import 'package:third_app/dummy_data.dart';

class CategorieScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DeliMeals'),
      ),
      body: GridView(
        children: DUMMY_CATEGORIES.map((category) {
          return CategoryItem(
            category.title,
            category.color,
          );
        }).toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio:
              3 / 2, // relaciòn de aspecto : 300 de altura x 200 de ancho
          // distancia entre nuestras columnas y filas
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
