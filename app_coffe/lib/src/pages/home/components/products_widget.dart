import 'package:app_coffe/src/widgets/products.dart';
import 'package:flutter/material.dart';
import 'package:app_coffe/src/config/data/app_data.dart' as app_data;

class ProductsWidgets extends StatelessWidget {
  const ProductsWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 405,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return Products(
            index: index,
            itemModel: app_data.items[index],
          );
        },
        itemCount: app_data.items.length,
      ),
    );
  }
}
