import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNav extends StatelessWidget {
  void Function(int)? onTabChange;
  BottomNav({super.key, this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: GNav(
        tabs: const [
          GButton(icon: Icons.home, text: "Shop", gap: 4,),
          GButton(icon: Icons.shopping_bag_rounded, text: "Cart", gap: 4,)
        ],
        onTabChange: (value) => onTabChange!(value),
        mainAxisAlignment: MainAxisAlignment.center,
        color: Colors.grey.shade400,
        activeColor: Colors.grey.shade800,
        tabActiveBorder: Border.all(color: Colors.grey.shade200),
        tabBackgroundColor: Colors.grey.shade200,
        tabBorderRadius: 12,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
    );
  }
}
