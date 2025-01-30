import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../screens/loading_screen.dart';
import '../screens/home_screen.dart';
import '../screens/profile_screen.dart';
import '../screens/search_screen.dart';
import '../screens/login_screen.dart';
import '../screens/settings_screen.dart';
import '../screens/eserlerim_screen.dart';
import '../screens/new_screen.dart';
import '../screens/favoriler_screen.dart';


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

GoRoute(
      path: '/eserlerim',
      builder: (context, state) => const EserlerimScreen(),
    ),

GoRoute(
      path: '/yeni-eser',
      builder: (context, state) => const NewScreen(),
    ),

    GoRoute(
      path: '/favoriler',
      builder: (context, state) => const FavorilerScreen(),
    ),

    GoRoute(
      path: '/login',
      pageBuilder: (context, state) => NoTransitionPage<void>(
        key: state.pageKey,
        child: const LoginScreen(),
      ),
    ),

   GoRoute(
      path: '/settings',
      pageBuilder: (context, state) => NoTransitionPage<void>(
        key: state.pageKey,
        child: const SettingsScreen(),
      ),
    ),

  ],
);