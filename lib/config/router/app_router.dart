import 'package:go_router/go_router.dart';
import 'package:shop_room/presentation/screens/screens.dart';  //

// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: DashboardScreen.name,
      builder: (context, state) => DashboardScreen(),
    ),
    GoRoute(
      path: '/gestionar',
      name: GestionarScreen.name,
      builder: (context, state) => GestionarScreen(),
    ),
    GoRoute(
      path: '/shop',
      name: ShopScreen.name,
      builder: (context, state) => ShopScreen(),
    ),
    GoRoute(
      path: '/reportes',
      name: ReportScreen.name,
      builder: (context, state) => ReportScreen(),
    ),
  ],
);