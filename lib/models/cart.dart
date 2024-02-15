import 'package:ecommerce_app/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
//shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Nike Air Max Alpha Trainer',
        price: '399,99',
        description:
            'Equipado com uma unidade Air Max altamente visível no calcanhar, este tênis oferece amortecimento responsivo e estilo urbano moderno.',
        imagePath: 'assets/1nikeair.png'),
    Shoe(
        name: 'Nike Tech Hera Phantom Orewood',
        price: '799,90',
        description:
            'o Nike Hera oferece um design moderno e elegante. Seus detalhes refletivos acrescentam um toque de sofisticação ao visual.',
        imagePath: 'assets/4NikeHera.png'),
    Shoe(
        name: 'Nike Air Force 1 Shadow',
        price: '989,99',
        description:
            'Seu estilo minimalista e de cores não usuais é complementado por detalhes sutis, tornando-o uma escolha clássica para os amantes do tênis.',
        imagePath: 'assets/3NikeAirShadow.png'),
    Shoe(
        name: 'Nike Alphafly',
        price: '850,00',
        description:
            'O Alphafly possui um design elegante e aerodinâmico, ideal para corredores que buscam desempenho e estilo.',
        imagePath: 'assets/5NikeAlphafly.png'),
  ];

//list of items in user cart
  List<Shoe> userCart = [];

//list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

//get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

//add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

//remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
