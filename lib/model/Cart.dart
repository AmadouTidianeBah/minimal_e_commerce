import 'package:flutter/cupertino.dart';

import 'Shoes.dart';

class Cart extends ChangeNotifier {
  List<Shoes> shoesShop = [
    Shoes(name: "Air Jordan 3 Retro", description: "Clean and supreme, the AJ3 returns with all of its classic style and grace.", price: "200", imagePath: "asset/images/shoes1.jpeg"),
    Shoes(name: "Air Jordan 14", description: "The Air Jordan 14 is the stuff of legends—after all, it's the last signature shoe MJ wore on-court for Chicago.", price: "200", imagePath: "asset/images/shoes2.jpeg"),
    Shoes(name: "Nike Dunk Low", description: "Whether you're a hooper, a skater or you just love kicks, the Nike Dunk Low has been a fave among athletes for decades.", price: "100", imagePath: "asset/images/shoes3.jpeg"),
    Shoes(name: "Nike Dunk LRP", description: "Created for the hardwood but taken to the streets, the '80s b-ball icon returns with classic details and throwback hoops flare.", price: "125", imagePath: "asset/images/shoes4.jpeg"),
    Shoes(name: "Nike Dunk Low", description: "Created for the hardwood but taken to the streets, the '80s b-ball icon returns with perfectly shined overlays and classic team colors.", price: "125", imagePath: "asset/images/shoes5.jpeg"),
    Shoes(name: "KD16 B.A.D.", description: "Wanda Durant is the real MVP, but KD also has to give props to his grandma, Barbara A. Davis, the one who told KD his height would be a gift.", price: "160", imagePath: "asset/images/shoes6.jpeg")
  ];
  List<Shoes> userCart = [];
  List<Shoes> getShoes() {
    return shoesShop;
  }
  List<Shoes> getUserCart() {
    return userCart;
  }
  void addShoesInCart(Shoes shoes) {
    userCart.add(shoes);
    notifyListeners();
  }
  void deleteShoesInCart(Shoes shoes) {
    userCart.remove(shoes);
    notifyListeners();
  }
}