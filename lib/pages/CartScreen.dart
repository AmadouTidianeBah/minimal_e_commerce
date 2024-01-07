import 'package:flutter/material.dart';
import 'package:minimal_e_commerce/model/Cart.dart';
import 'package:provider/provider.dart';
import '../component/UserCart.dart';
import '../model/Shoes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "My Cart",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),
          ),

          const SizedBox(height: 16,),
          
          Expanded(child: ListView.builder(
            itemCount: value.getUserCart().length,
            itemBuilder: (context, index) {
              Shoes shoes = value.getUserCart()[index];
              return UserCart(shoes: shoes,);
          },))
        ],
      ),
    ),);
  }
}
