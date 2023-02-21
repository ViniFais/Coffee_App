import 'package:flutter/material.dart';

class ItemTile extends StatelessWidget {
  final EdgeInsetsGeometry padding;
  final double? height;
  final double width;
  final double elevation;
  final double borderRadius;
  final Color backgroundColor;
  final Color shadowColor;
  final Widget widget;
  final VoidCallback onTap;

  const ItemTile({
    super.key,
    required this.padding,
    this.height,
    required this.width,
    required this.elevation,
    required this.borderRadius,
    required this.backgroundColor,
    required this.shadowColor,
    required this.widget,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Container(
        height: height,
        width: width,
        child: GestureDetector(
          onTap: onTap,
          child: Card(
            elevation: elevation,
            color: backgroundColor,
            shadowColor: shadowColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
            child: widget,
          ),
        ),
      ),
    );
  }
}
