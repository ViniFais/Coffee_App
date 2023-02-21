import 'package:intl/intl.dart';

class UtilsServices {
  //R$ valor formatado
  String priceToCurrency(double price){
    NumberFormat numberFormat = NumberFormat.simpleCurrency(locale: 'pt-br');
    return numberFormat.format(price);
  }
}