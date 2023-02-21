import 'package:app_coffe/src/config/colors/custom_colors.dart';
import 'package:app_coffe/src/config/fonts/text_app.dart';
import 'package:flutter/material.dart';

class CategoryButtom extends StatelessWidget {
  final double fontSize;
  final FontWeight? fontWeight;
  final bool isSelected;
  final String category;
  final VoidCallback onPressed;
  final EdgeInsetsGeometry padding;
  

  const CategoryButtom({
    super.key,
    required this.fontSize,
    this.fontWeight,
    required this.isSelected,
    required this.category,
    required this.onPressed,
    required this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
          ),
        elevation: 10,
        shadowColor: Colors.grey.shade900,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(40),
          child: Material(
            child: InkWell(
              onTap: onPressed,
              child: Ink(
                child: Container(
                  padding: padding,
                  //padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color:
                        isSelected ? CustomColors.themeAppColor2 : Colors.white,
                  ),
                  child: TextApp(text: category, fontSize: fontSize, color: isSelected ? Colors.white : CustomColors.themeAppColor2,fontWeight: fontWeight,)
                 
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
