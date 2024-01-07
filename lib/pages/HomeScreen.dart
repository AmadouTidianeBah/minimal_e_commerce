import 'package:flutter/material.dart';
import 'package:minimal_e_commerce/component/BottomNav.dart';

import 'CartScreen.dart';
import 'ShopScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void updateIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _screens = [ShopScreen(), CartScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(Icons.menu, color: Colors.black,),);
          }
        ),
      ),
      bottomNavigationBar: BottomNav(
        onTabChange: (index) {
          updateIndex(index);
        },
      ),
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                DrawerHeader(
                    child: Image.asset("asset/images/nike.jpg")
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Divider(color: Colors.grey.shade800, height: 8,),
                ),
                const ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Shop'),
                ),
                const ListTile(
                  leading: Icon(Icons.shopping_bag_rounded),
                  title: Text('Cart'),
                ),
                const ListTile(
                  leading: Icon(Icons.info),
                  title: Text('About'),
                ),
              ],
            ),
            const ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
            ),
          ],
        ),
      ),
      body: _screens[_selectedIndex],
    );
  }
}
