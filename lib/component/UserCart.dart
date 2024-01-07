import 'package:flutter/material.dart';
import 'package:minimal_e_commerce/model/Cart.dart';
import 'package:provider/provider.dart';
import '../model/Shoes.dart';

class UserCart extends StatefulWidget {
  Shoes shoes;
  UserCart({super.key, required this.shoes});

  @override
  State<UserCart> createState() => _UserCartState();
}

class _UserCartState extends State<UserCart> {
  void deleteShoesInCart() {
    Provider.of<Cart>(context, listen: false).deleteShoesInCart(widget.shoes);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        border: Border.all(color: Colors.grey),
        borderRadius: const BorderRadius.all(Radius.circular(12))
      ),
      child: ListTile(
        leading: Image.asset(widget.shoes.imagePath),
        title: Text(widget.shoes.name),
        subtitle: Text(widget.shoes.price),
        trailing: IconButton(onPressed: deleteShoesInCart, icon: const Icon(Icons.delete)),
      ),
    );
  }
}
