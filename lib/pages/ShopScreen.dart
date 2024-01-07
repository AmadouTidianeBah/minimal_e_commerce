import 'package:flutter/material.dart';
import 'package:minimal_e_commerce/model/Cart.dart';
import 'package:minimal_e_commerce/model/Shoes.dart';
import 'package:provider/provider.dart';

import '../component/ShoesTile.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  void addShoesOnCard(Shoes shoes) {
    Provider.of<Cart>(context, listen: false).addShoesInCart(shoes);
    showDialog(context: context, builder: (context) => const AlertDialog(
      title: Text("Successful added"),
      content: Text("Check your cart"),
    ),);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Search bar
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(8)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Search"),
              Icon(Icons.search)
            ],
          ),
        ),

        // Message
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Text(
            "Everyone flies... some fly longer than others",
            style: TextStyle(
                color: Colors.grey
            ),
          ),
        ),

        // Hot picks
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              Text(
                "Hot Picks",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32
                ),
              ),
              Text(
                "see all",
                style: TextStyle(
                    color: Colors.blue
                ),
              )
            ],
          ),
        ),

        Expanded(
            child: Consumer<Cart>(builder: (context, value, child) => ListView.builder(
              itemCount: value.getShoes().length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                Shoes shoes = value.getShoes()[index];
                return ShoesTile(
                  shoes: shoes,
                  onTap: () => addShoesOnCard(shoes),
                );
              },
            )
        )),
      ],
    );
  }
}
