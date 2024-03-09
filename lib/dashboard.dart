import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Dashboard",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.grey,
        foregroundColor: Colors.black,
        centerTitle: true,
      ),bottomNavigationBar: ConvexAppBar( 
        items: const [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.search, title: 'Search'),
          TabItem(icon: Icons.add, title: 'Add'),
          TabItem(icon: Icons.favorite, title: 'Favorite'),
          TabItem(icon: Icons.account_circle, title: 'Account'),
        ],
        initialActiveIndex: 2,//optional, default as 0
        onTap: (int i) => print('click index=$i'),
        backgroundColor: Colors.grey,
      ),
    );
  }
}
