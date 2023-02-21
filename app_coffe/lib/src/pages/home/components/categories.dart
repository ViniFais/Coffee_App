import 'package:app_coffe/src/widgets/category_buttom.dart';
import 'package:app_coffe/src/config/data/app_data.dart' as app_data;
import 'package:flutter/material.dart';

class CategoriesWidget extends StatefulWidget {
  const CategoriesWidget({super.key});

  @override
  State<CategoriesWidget> createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget> {
  String selectedCategory = 'Capuccino';
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 2),
      height: 90,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return CategoryButtom(
              fontWeight: FontWeight.w700,
              fontSize: 15,
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 25,
              ),
              isSelected: app_data.categories[index] == selectedCategory,
              category: app_data.categories[index],
              onPressed: () {
                setState(() {
                  selectedCategory = app_data.categories[index];
                });
              });
        },
        separatorBuilder: (_, index) {
          return const SizedBox(
            width: 10,
          );
        },
        itemCount: app_data.categories.length,
      ),
    );
  }
}
