import 'package:go_router/go_router.dart';
import 'package:shop_room/presentation/screens/screens.dart';  //

// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => DashboardScreen(),
    ),
    GoRoute(
      path: '/gestionar',
      builder: (context, state) => GestionarScreen(),
    ),
    GoRoute(
      path: '/shop',
      builder: (context, state) => ShopScreen(),
    ),
    GoRoute(
      path: '/reportes',
      builder: (context, state) => ReportScreen(),
    ),
  ],
);