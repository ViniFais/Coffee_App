import 'package:app_coffe/src/config/fonts/text_app.dart';
import 'package:app_coffe/src/model/item_model.dart';
import 'package:app_coffe/src/config/colors/custom_colors.dart';
import 'package:app_coffe/src/pages/product/components/bottom_screen.dart';
import 'package:app_coffe/src/pages/product/components/category_size.dart';
import 'package:app_coffe/src/pages/product/components/inf_product.dart';
import 'package:flutter/material.dart';

class ProdutoScreen extends StatefulWidget {
  final ItemModel itemModel;
  const ProdutoScreen({super.key, required this.itemModel});

  @override
  State<ProdutoScreen> createState() => _ProdutoScreenState();
}

class _ProdutoScreenState extends State<ProdutoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                //Imagem Produto
                Expanded(
                  flex: 2,
                  child: Hero(
                    tag: widget.itemModel.imgUrl,
                    child: Image.asset(
                      widget.itemModel.imgUrl,
                    ),
                  ),
                ),

                Expanded(
                  flex: 3,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withAlpha(210),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        //Inf Produtos
                       InfoProduct(itemModel: widget.itemModel),

                        //Texto Tamanho
                       const Padding(
                          padding:
                              EdgeInsets.only(left: 30, top: 30, right: 30),
                          child: TextApp(
                            text: 'Tamanho',
                            fontSize: 23,
                            fontWeight: FontWeight.w900,
                            fontStyle: FontStyle.italic,
                          ),
                        ),

                        //Tamanho do Produto
                        const CategorySize(),

                        //Espaço
                       const SizedBox(
                          height: 25,
                        ),

                        //Botão
                        ButtonScreen(
                          itemModel: widget.itemModel,),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            //Botão de voltar
            Positioned(
                left: 15,
                top: 30,
                child: IconButton(
                    alignment: Alignment.center,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      size: 28,
                    ))),

            //Botão de Curtir
            Positioned(
                left: 350,
                top: 30,
                child: Container(
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                      )),
                  decoration: BoxDecoration(
                    color: CustomColors.themeAppColor1,
                    shape: BoxShape.circle,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
