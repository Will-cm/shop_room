import 'package:flutter/material.dart';

class ReportScreen extends StatelessWidget {
  static const String name = 'report_screen';  //nombre de ruta estatico
  const ReportScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Report screen'),
      ),
      body: const Placeholder(),
    );
  }

}