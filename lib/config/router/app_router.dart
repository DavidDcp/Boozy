import 'package:boozy/presentation/screens/screens.dart';
import 'package:go_router/go_router.dart';


final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/rules',
      name: RulesScreen.name,
      builder: (context, state) => const RulesScreen(),
    ),
    GoRoute(
      path: '/inscription',
      name: InscriptionScreen.name,
      builder: (context, state) => const InscriptionScreen(),
    ),
    GoRoute(
      path: '/roulette',
      name: RouletteScreen.name,
      builder: (context, state) => const RouletteScreen(),
    ),
  ],
);
