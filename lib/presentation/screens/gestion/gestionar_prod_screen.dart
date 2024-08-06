import 'package:flutter/material.dart';

class GestionarProdScreen extends StatelessWidget {
  static const String name = 'gestionar_prod_screen';  //nombre de ruta estatico
  final String productoId;

  const GestionarProdScreen({
    super.key,
    required this.productoId  //parametro obligatorio
  });

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('ProductoID: $productoId'),
      ),
      body: const Placeholder(),
    );
  }

}