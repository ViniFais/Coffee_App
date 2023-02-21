import 'package:app_coffe/src/config/colors/custom_colors.dart';
import 'package:app_coffe/src/config/fonts/text_app.dart';
import 'package:app_coffe/src/model/item_model.dart';
import 'package:app_coffe/src/pages/product/produto_screen.dart';
import 'package:app_coffe/src/widgets/item_tile.dart';
import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:app_coffe/src/services/utils_services.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  final int index;
  final ItemModel itemModel;
  const Products({super.key, required this.index, required this.itemModel});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    UtilsServices utilsServices = UtilsServices();
    return ItemTile(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) =>
                ProdutoScreen(itemModel: widget.itemModel),
          ),
        );
      },
      padding: const EdgeInsets.only(
        left: 7,
        top: 15,
        bottom: 40,
        right: 7,
      ),
      width: 200,
      elevation: 20,
      borderRadius: 30,
      backgroundColor: Colors.white,
      shadowColor: Colors.grey.shade900,
      
      widget: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Imagem Produto
                Expanded(child: 
                
                Hero(
                  tag: widget.itemModel.imgUrl,
                  child: Image.asset(widget.itemModel.imgUrl))),

                //Inf do Produto
                const SizedBox(
                  height: 25,
                ),

                //Nome Produto
                TextApp(
                  text: widget.itemModel.itemName,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  
                ),

                //Nome Adicional produto
                TextApp(
                    text: widget.itemModel.itemAddName,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade600),

                //Espaço
                const SizedBox(
                  height: 30,
                ),

                //Preço Produto
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextApp(
                        text: utilsServices.priceToCurrency(
                          widget.itemModel.price,
                        ),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),

                    //Botão
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: CustomColors.themeAppColor2,
                          shape: const CircleBorder(),
                          padding: const EdgeInsets.all(7),
                        ),
                        onPressed: () {},
                        child: const Icon(
                          BootstrapIcons.plus,
                          size: 30,
                        )),
                  ],
                ),

                //Espaço
                const SizedBox(
                  width: 50,
                ),
              ],
            ),
          ),

          //Avaliação Produto
          Positioned(
            bottom: 312,
            child: SizedBox(
              height: 30,
              width: 80,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: CustomColors.themeAppColor2,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                ),
                onPressed: () {},
                icon: const Icon(
                  BootstrapIcons.star_fill,
                  size: 15,
                ),
                label: const Text('4.5'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
