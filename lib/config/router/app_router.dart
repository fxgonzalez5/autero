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
      path: '/',
      redirect: ( _ , __ ) => '/login',
    ),

  ]
);