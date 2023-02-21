import 'package:app_coffe/src/widgets/especial_products.dart';
import 'package:flutter/material.dart';
import 'package:app_coffe/src/config/data/app_data.dart' as app_data;

class ProductsTopsWidgets extends StatelessWidget {
  const ProductsTopsWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: app_data.itemsTops.length,
      itemBuilder: (_, index) {
        return EspecialProducts(
          index: index,
          itemModel: app_data.itemsTops[index],
        );
      },
    );
  }
}
