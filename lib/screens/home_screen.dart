import 'package:dotlottie_loader/dotlottie_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

import '../widgets/bottom_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      appBar: AppBar(
        title: const Text('Artify'),
        actions: [
          IconButton(
            icon: const Icon(CupertinoIcons.bell),
            onPressed: () {},
          ),
        ],
      ),

      // Yan menü (Drawer)
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: const Color.fromARGB(255, 140, 11, 69)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.white,
                    child: Icon(
                      CupertinoIcons.person_circle,
                      size: 60,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Hoşgeldiniz!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.home),
              title: const Text('Ana Sayfa'),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.heart),
              title: const Text('Favoriler'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.person),
              title: const Text('Profil'),
              onTap: () {
                context.go("/Profil");
              },
              
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.info),
              title: const Text('Hakkında'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),


      // Ana içerik
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(16),
              child:  SizedBox(
                width: 200,
                child: DotLottieLoader.fromAsset("assets/motions/home.lottie",
                      frameBuilder: (BuildContext ctx, DotLottie? dotlottie) {
                    if (dotlottie != null) {
                      return Lottie.memory(dotlottie.animations.values.single);
                    } else {
                      return Container();
                    }
                  }),
              ),
          ),
        ),
        ],
      ),
      // Alt navigasyon çubuğu
      bottomNavigationBar: BottomMenu(),
   
    );
  }
}

