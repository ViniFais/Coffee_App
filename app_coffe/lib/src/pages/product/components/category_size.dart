import 'package:app_coffe/src/widgets/category_buttom.dart';
import 'package:app_coffe/src/config/data/app_data.dart' as app_data;
import 'package:flutter/material.dart';

class CategorySize extends StatefulWidget {
  const CategorySize({super.key});

  @override
  State<CategorySize> createState() => _CategorySizeState();
}

class _CategorySizeState extends State<CategorySize> {
  String selectedCategory = 'Pequeno \n 350 ml';
  @override
  Widget build(BuildContext context) {
    return Container(
                         margin: const EdgeInsets.only(left: 5),
                          height: 90,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (_, index) {
                              return CategoryButtom(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                padding:
                                    const EdgeInsets.fromLTRB(25, 10, 25, 10),
                                isSelected: app_data.productoSize[index] ==
                                    selectedCategory,
                                category: app_data.productoSize[index],
                                onPressed: () {
                                  setState(
                                    () {
                                      selectedCategory =
                                          app_data.productoSize[index];
                                    },
                                  );
                                },
                              );
                            },
                            separatorBuilder: (_, index) {
                              return const SizedBox(
                                width: 10,
                              );
                            },
                            itemCount: app_data.productoSize.length,
                          ),
                        );
  }
}
