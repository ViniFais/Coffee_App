import 'package:app_coffe/src/config/colors/custom_colors.dart';
import 'package:app_coffe/src/config/fonts/text_app.dart';
import 'package:app_coffe/src/pages/home/components/categories.dart';
import 'package:app_coffe/src/pages/home/components/productsTops_widgets.dart';
import 'package:app_coffe/src/pages/home/components/products_widget.dart';
import 'package:app_coffe/src/pages/home/components/search_widget.dart';
import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color colorAppBar = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextApp(
          text: 'CoffeApp',
          fontSize: 25,
          fontWeight: FontWeight.w900,
          color: Colors.black,
          fontStyle: FontStyle.italic,
        ),
        leading: const Padding(
          padding: EdgeInsets.only(left: 6, top: 6),
          child: CircleAvatar(
            child: Icon(Icons.person),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 11),
            child: Icon(
              BootstrapIcons.bell_fill,
              size: 30,
              color: CustomColors.themeAppColor2,
            ),
          ),
        ],
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Texto recepetivo
            const Padding(
                padding: EdgeInsets.only(top: 30, left: 20),
                child: TextApp(
                  text: 'Bom dia, Vinicius',
                  fontSize: 22,
                  fontWeight: FontWeight.w800,
                )),

            //Campo de pesquisa
            const SearchWidget(),

            //Texto Categorias
            Row(
              children: const [
                Padding(
                    padding: EdgeInsets.only(top: 30, left: 20),
                    child: TextApp(
                      text: 'Categorias',
                      fontSize: 22,
                      fontWeight: FontWeight.w900,
                      fontStyle: FontStyle.italic,
                    )),
              ],
            ),

            //Categorias
            const CategoriesWidget(),

            //Cards produto
            const ProductsWidgets(),

            
            //Bebeidas Top
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 20),
                  child: TextApp(
                    text: 'Bebidas Especiais',
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),

            //Card Produtos Tops
            const ProductsTopsWidgets(),

            //Espaço
            const SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
