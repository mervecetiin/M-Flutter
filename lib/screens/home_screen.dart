import 'package:dotlottie_loader/dotlottie_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

import '../core/constants.dart';
import '../core/themes.dart';
import '../main.dart';
import '../widgets/bottom_menu.dart';
import '../widgets/suggested_action_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Artify',
          style: Theme.of(context).textTheme.headlineMedium, // Theme kullanımı
        ),
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.moon),
            onPressed: () {
              context.read<ThemeProvider>().toggleTheme(); // Tema değiştirici eklendi
            },
          ),
          TextButton(
            onPressed: () {
              context.go("/login");
            },
            child: Text(
              'Sign In',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: Theme.of(context).colorScheme.onSecondary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary, // Theme kullanımı
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Theme.of(context).colorScheme.onPrimary,
                    child: Icon(
                      CupertinoIcons.person_circle,
                      size: 60,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Hoşgeldiniz!',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home, color: Theme.of(context).colorScheme.onSurface),
              title: Text('Ana Sayfa', style: Theme.of(context).textTheme.bodyMedium),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.heart, color: Theme.of(context).colorScheme.onSurface),
              title: Text('Favoriler', style: Theme.of(context).textTheme.bodyMedium),
              onTap: () => context.push("/favoriler"),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.settings, color: Theme.of(context).colorScheme.onSurface),
              title: Text('Ayarlar', style: Theme.of(context).textTheme.bodyMedium),
              onTap: () => context.push("/settings"),
            ),
            Padding(
              padding: EdgeInsets.only(top: 385),
            ),
            /*Divider(),
            ListTile(
              leading: Icon(Icons.logout, color: Theme.of(context).colorScheme.onError),
              title: Text('Çıkış Yap', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.onError)),
              onTap: () => context.go("/login"),
            ),*/

          ListTile(
  leading: Icon(Icons.logout, color: Theme.of(context).colorScheme.onError),
  title: Text(
    'Çıkış Yap',
    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
      color: Theme.of(context).colorScheme.onError, // Hata rengine uyumlu
    ),
  ),
  onTap: () => context.go("/login"),
),


          ],
        ),
      ),

      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.topCenter,
                padding: const EdgeInsets.only(top: 24),
                child: SizedBox(
                  width: 200,
                  height: 200,
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: DotLottieLoader.fromAsset(
                      "assets/motions/home.lottie",
                      frameBuilder: (context, dotlottie) {
                        if (dotlottie != null) {
                          return Lottie.memory(dotlottie.animations.values.single);
                        }
                        return const SizedBox();
                      },
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomMenu(),
    );
  }
}
