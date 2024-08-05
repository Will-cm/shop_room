import 'package:flutter/material.dart';

class GestionarScreen extends StatelessWidget {
  static const String name = 'gestionar_screen';  //nombre de ruta estatico
  const GestionarScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gestionar screen'),
      ),
      body: const Placeholder(),
    );
  }

}