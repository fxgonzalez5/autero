import 'package:go_router/go_router.dart';

import 'package:autero/presentation/screens/screens.dart';

final appRouter = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(
      path: '/login',
      name: LoginScreen.name,
      builder: (context, state) => const LoginScreen(),
    ),
    
    GoRoute(
      path: '/register',
      name: RegisterScreen.name,
      builder: (context, state) => const RegisterScreen(),
    ),

    GoRoute(
      path: '/home/:page',
      name: HomeScreen.name,
      builder: (context, state) {
        final pageIndex = int.parse( state.pathParameters['page'] ?? '0' );
        return HomeScreen( pageIndex: pageIndex );
      },
      routes: const [
        // Agregar aquí las rutas de las pantallas que van un nivel más adentro (Donde no se muestra el BottomNavigationBar)
        
        //  GoRoute(
        //   path: 'car/:id',
        //   name: CarScreen.name,
        //   builder: (context, state) {
        //     final carId = state.pathParameters['id'] ?? 'no-id';
        //     return CarScreen( movieId: carId );
        //   },
        // ),
      ]
    ),
    
    GoRoute(
      path: '/',
      redirect: ( _ , __ ) => '/login',
    ),

  ]
);