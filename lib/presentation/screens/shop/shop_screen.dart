import 'package:flutter/material.dart';

class ShopScreen extends StatelessWidget {
  static const String name = 'shop_screen';  //nombre de ruta estatico
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shop screen'),
      ),
      body: const Placeholder(),
    );
  }

}