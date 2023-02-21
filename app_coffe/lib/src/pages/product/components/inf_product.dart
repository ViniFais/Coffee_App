import 'package:app_coffe/src/config/fonts/text_app.dart';
import 'package:app_coffe/src/model/item_model.dart';
import 'package:flutter/material.dart';

class InfoProduct extends StatefulWidget {
  final ItemModel itemModel;
  const InfoProduct({super.key, required this.itemModel});

  @override
  State<InfoProduct> createState() => _InfoProductState();
}

class _InfoProductState extends State<InfoProduct> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 30,
        top: 30,
        right: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const TextApp(
            text: 'Sobre',
            fontSize: 28,
            fontWeight: FontWeight.w900,
            fontStyle: FontStyle.italic,
          ),
          Container(
            height: 110,
            child: SingleChildScrollView(
              child: TextApp(
                text: widget.itemModel.description,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
