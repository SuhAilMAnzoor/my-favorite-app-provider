import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:my_favorite_app_provider/provider/favorite_provider.dart';
import 'package:my_favorite_app_provider/screens/favorite_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => FavoriteProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: const FavoriteScreen(),
      ),
    );
  }
}
