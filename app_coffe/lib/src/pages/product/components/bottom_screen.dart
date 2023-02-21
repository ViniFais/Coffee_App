import 'package:app_coffe/src/config/colors/custom_colors.dart';
import 'package:app_coffe/src/config/fonts/text_app.dart';
import 'package:app_coffe/src/model/item_model.dart';
import 'package:app_coffe/src/services/utils_services.dart';
import 'package:flutter/material.dart';

class ButtonScreen extends StatefulWidget {
  final ItemModel itemModel;
  const ButtonScreen({super.key, required this.itemModel});

  @override
  State<ButtonScreen> createState() => _ButtonScreenState();
}

class _ButtonScreenState extends State<ButtonScreen> {
  UtilsServices utilsServices = UtilsServices();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Card(
        elevation: 10,
        shadowColor: Colors.grey.shade900,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        child: SizedBox(
          height: 70,
          width: 200,
          child: ElevatedButton(
            onPressed: () {},
            child: TextApp(
              text:
                  'Add ao carrinho       |      ${utilsServices.priceToCurrency(widget.itemModel.price)}',
              fontSize: 19,
              fontWeight: FontWeight.w500,
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: CustomColors.themeAppColor2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
