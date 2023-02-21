import 'package:app_coffe/src/config/fonts/text_app.dart';
import 'package:app_coffe/src/model/item_model.dart';
import 'package:app_coffe/src/pages/product/produto_screen.dart';
import 'package:app_coffe/src/widgets/item_tile.dart';
import 'package:app_coffe/src/config/data/app_data.dart' as app_data;
import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:app_coffe/src/services/utils_services.dart';
import 'package:flutter/material.dart';

class EspecialProducts extends StatefulWidget {
  final int index;
  final ItemModel itemModel;

  const EspecialProducts({
    super.key,
    required this.index,
    required this.itemModel,
  });

  @override
  State<EspecialProducts> createState() => _EspecialProductsState();
}

class _EspecialProductsState extends State<EspecialProducts> {
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
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      height: 180,
      width: MediaQuery.of(context).size.width,
      elevation: 20,
      borderRadius: 20,
      backgroundColor: Colors.white,
      shadowColor: Colors.grey.shade900,
      widget: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Imagem Produto
              Expanded(
                child: Hero(
                  tag: widget.itemModel.imgUrl,
                  child: Image.asset(
                    app_data.itemsTops[widget.index].imgUrl,
                  ),
                ),
              ),

              //Inf do Produto
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Espaço
                  const SizedBox(
                    height: 40,
                  ),

                  //Nome Produto
                  TextApp(
                    text: app_data.itemsTops[widget.index].itemName,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),

                  //Nome Adicional produto
                  TextApp(
                    text: app_data.itemsTops[widget.index].itemAddName,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade600,
                  ),

                  //Espaço
                  const SizedBox(
                    height: 30,
                  ),

                  //Preço Produto
                  TextApp(
                      text: utilsServices.priceToCurrency(
                          app_data.itemsTops[widget.index].price),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ],
              ),

              //Espaço
              const SizedBox(
                width: 50,
              ),

              //Botão
              Column(
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 0, 128, 38)),
                          onPressed: () {},
                          child: const Icon(
                            BootstrapIcons.arrow_right,
                            size: 25,
                          )),
                    ),
                  )
                ],
              ),
            ],
          ),

          //Avaliação Produto
          Positioned(
            left: 220,
            bottom: 143,
            height: 30,
            width: 75,
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 0, 128, 38),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
              ),
              onPressed: () {},
              icon: const Icon(
                BootstrapIcons.star_fill,
                size: 15,
              ),
              label: const Text(
                '4.5',
                style: TextStyle(fontSize: 14),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
