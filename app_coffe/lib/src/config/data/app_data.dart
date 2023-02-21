import 'package:app_coffe/src/model/item_model.dart';

ItemModel capuccinoCaramelo = ItemModel(
  itemName: 'Cappuccino',
  itemAddName: 'com caramelo',
  description: 'Melhor Cappucino da cidade, feito com dedicação e a qualidade que so nós temos, utlizamos somente produtos de exelencia.',
  imgUrl: 'assets/products/img1.png',
  price: 6.0,
  avaliation: 4.9,
);

ItemModel capuccinoTrufado = ItemModel(
  itemName: 'Cappuccino',
  itemAddName: 'com trufado',
  description: 'Melhor Cappucino da cidade, feito com dedicação e a qualidade que so nós temos, utlizamos somente produtos de exelencia.',
  imgUrl: 'assets/products/img2.png',
  price: 8.0,
  avaliation: 5.0,
);

ItemModel capuccinoTradicional = ItemModel(
  itemName: 'Cappuccino',
  itemAddName: 'com leite',
  description: 'Melhor Cappucino da cidade, feito com dedicação e a qualidade que so nós temos, utlizamos somente produtos de exelencia.',
  imgUrl: 'assets/products/img3.png',
  price: 10.0,
  avaliation: 4.5,
);

ItemModel milkShakeCapuccino = ItemModel(
  itemName: 'MilkShake',
  itemAddName: 'com cappucino',
  description: 'Melhor Milkshake de cappuccino da cidade, feito com dedicação e a qualidade que so nós temos, utlizamos somente produtos de exelencia.',
  imgUrl: 'assets/products/img4.png',
  price: 10.0,
  avaliation: 4.5,
);

ItemModel milkshakeCafe = ItemModel(
  itemName: 'Milkshake',
  itemAddName: 'com café',
  description: 'Melhor Milkshake de café da cidade, feito com dedicação e a qualidade que so nós temos, utlizamos somente produtos de exelencia.',
  imgUrl: 'assets/products/img5.png',
  price: 10.0,
  avaliation: 5.0,
);

//Produtos
List<ItemModel> items = [
  capuccinoCaramelo,
  capuccinoTrufado,
  capuccinoTradicional,
];

//Produtos Tops
List<ItemModel> itemsTops = [
  milkShakeCapuccino,
  milkshakeCafe,
];

//Categorias dos Produtos
List<String> categories = [
  'Capuccino',
  'Coffe',
  'Espresso',
];

//Tamanho dos produtos
List<String> productoSize = [
  'Pequeno \n 350 ml',
  ' Médio \n 500 ml',
  'Grande \n     1 L',
];
