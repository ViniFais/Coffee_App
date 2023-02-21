import 'package:app_coffe/src/config/colors/custom_colors.dart';
import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 15, 25, 8),
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey.withAlpha(70),
          hintText: 'Search Coffe...',
          hintStyle: TextStyle(color: Colors.black.withAlpha(100)),
          prefixIcon: const Icon(Icons.search),
          suffixIcon: ElevatedButton(
            onPressed: () {},
            //Icone de filtro
            child: Icon(
              BootstrapIcons.sliders,
              size: 23,
            ),
            style: ElevatedButton.styleFrom(
              elevation: 5,
              backgroundColor: CustomColors.themeAppColor2,
              shape: const CircleBorder(),
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: const BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
        ),
      ),
    );
  }
}
