import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../screens/loading_screen.dart';
import '../screens/home_screen.dart';
import '../screens/profile_screen.dart';
import '../screens/search_screen.dart';

// Router yapılandırması
final router = GoRouter(
  initialLocation: '/',  // Başlangıç rotası
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LoadingScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
     
     GoRoute(
      path: '/profil',
      builder: (context, state) => const ProfileScreen(),
    ),
   GoRoute(
      path: '/search',
      builder: (context, state) => const SearchScreen(),
    ),
  ],
);