import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'frontend/screens/home_screen.dart';
import 'frontend/screens/orders_screen.dart';

class AppNavigation {
  final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        name: 'home',
        path: '/',
        builder: (context, state) {
          return const MaterialApp(
            home: DashBoardScreen(),
          );
        },
        routes: [
          GoRoute(
            name: 'orders',
            path: 'orders',
            builder: (context, state) {
              return const MaterialApp(
                home: OrdersScreen(),
              );
            },
          ),
        ],
      ),
    ],
  );
}
