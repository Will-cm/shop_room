import 'package:flutter/material.dart';
import 'package:shop_room/config/router/app_router.dart';
import 'package:shop_room/presentation/screens/gestion/gestionar_screen.dart';
import 'package:shop_room/presentation/screens/home/dashboard_screen.dart';
import 'package:shop_room/presentation/screens/reports/report_screen.dart';
import 'package:shop_room/presentation/screens/shop/shop_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(  //rutas iniciales configuradas
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
    );
    /*
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardScreen(),
      routes: {
        '/gestionar': (context) => const GestionarScreen(),
        '/reportes': (context) => const ReportScreen(),
        '/shop': (context) => const ShopScreen(),
      },
    );*/
  }
}

