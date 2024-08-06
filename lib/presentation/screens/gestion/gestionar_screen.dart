import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shop_room/presentation/screens/screens.dart';

class GestionarScreen extends StatelessWidget {
  static const String name = 'gestionar_screen';  //nombre de ruta estatico
  const GestionarScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gestionar screen'),
      ),
      body: Container(        
        child: Wrap(
          children: [
            ElevatedButton(onPressed: () {
              context.push('/gestionar_prod_screen/${123}');  //route with parameters
              //context.pushNamed(GestionarProdScreen.name);  //route
            }, child: const Text('Gestionar productos'))
          ],
        ),
      ),
    );
  }

}