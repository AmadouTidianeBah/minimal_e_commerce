import 'package:flutter/material.dart';
import 'package:minimal_e_commerce/model/Shoes.dart';

class ShoesTile extends StatelessWidget {
  Shoes shoes;
  void Function()? onTap;
ShoesTile({super.key, required this.shoes, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      margin: const EdgeInsets.only(left: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey[100],
        border: Border.all(color: Colors.grey)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          
          ClipRRect(
            borderRadius: const BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12)),
            child: Image.asset(shoes.imagePath),
          ),

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(shoes.description),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      shoes.name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      "\$${shoes.price}",
                      style: TextStyle(
                        color: Colors.grey[700]
                      ),
                    )
                  ],
                ),
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12)
                      )
                    ),
                    child: const Center(child: Icon(Icons.add)),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
