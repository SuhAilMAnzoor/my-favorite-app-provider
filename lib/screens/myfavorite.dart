import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/favorite_provider.dart';

class MyFavoriteScreen extends StatefulWidget {
  const MyFavoriteScreen({super.key});

  @override
  State<MyFavoriteScreen> createState() => _MyFavoriteScreenState();
}

class _MyFavoriteScreenState extends State<MyFavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    // listen: false ensures this widget does NOT rebuild unnecessarily
    // final favoriteProvider = Provider.of<FavoriteProvider>(
    //   context,
    //   listen: false,
    // );
    print("build Favorite Screen");
    return Scaffold(
      appBar: AppBar(title: const Text("My Favorite Items")),
      body: Consumer<FavoriteProvider>(
        builder: (context, value, child) {
          print("print this widget only");
          if (value.selectedItems.isEmpty) {
            return const Center(child: Text("No favorites yet"));
          }
          return ListView.builder(
            itemCount: value.selectedItems.length,
            itemBuilder: (context, index) {
              final itemID = value.selectedItems[index];
              return ListTile(
                onTap: () {
                  value.remove(itemID);
                },
                title: Text("Item $itemID"),
                trailing: const Icon(Icons.favorite, color: Colors.red),
              );
            },
          );
        },
      ),
    );
  }
}
