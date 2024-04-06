import 'package:go_router/go_router.dart';
import 'package:olympus/presentation/screens.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const GetStartedScreen(),),
    GoRoute(path: '/login', builder: (context, state) => const LoginScreen(),),
    GoRoute(path: '/register', builder: (context, state) => const RegisterScreen(),),
    GoRoute(path: '/home', builder: (context, state) => const HomeScreen(),),
    GoRoute(path: '/cart', builder: (context, state) => const CartScreen(),),
    GoRoute(path: '/search', builder: (context, state) => const SearchScreen(),),
      GoRoute(path: '/allBook', builder: (context, state) => const AllBookScreen(),),
    GoRoute(path: '/library', builder: (context, state) => const LibraryScreen(),),
      GoRoute(path: '/details', builder: (context, state) => const DetailsBooksScreen(),),
    GoRoute(path: '/perfil', builder: (context, state) => PerfilScreen(),),
  ]
);