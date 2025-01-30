import 'package:dotlottie_loader/dotlottie_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

//import '../core/constants.dart';
//import '../core/themes.dart';
import '../widgets/bottom_menu.dart';
//import '../widgets/suggested_action_card.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // AppBar
  appBar: AppBar(
  title: const Text('Artify'),
  actions: [
    // Bell ikonunu kaldırıp yerine Sign In butonunu ekledim.
    TextButton(
      onPressed: () {
        // Kullanıcı giriş işlemi için buraya tıklayacak.
        context.go("/login"); // Login ekranına yönlendirme
      },
      child: const Text(
        'Sign In',
        style: TextStyle(
          color: Color.fromARGB(255, 0, 0, 0), // Yazı rengini beyaz yaptım
          fontWeight: FontWeight.bold, // Yazıyı belirginleştirdim
        ),
      ),
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
                color: Color.fromARGB(255, 140, 11, 69),
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
              onTap: () => context.push("/favoriler")
            ),
            /*ListTile(
              leading: const Icon(CupertinoIcons.person),
              title: const Text('Profil'),
              onTap: () => context.push("/profile")
            ),*/
            ListTile(
              leading: const Icon(CupertinoIcons.settings),
              title: const Text('Ayarlar'),
              onTap: () => context.push("/settings"),
            ),

            //const Spacer(),
            const Padding(
             padding: EdgeInsets.only(top: 385), // Butonu aşağı iter
              ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Çıkış Yap'),
              onTap: () => context.go("/login"),
            ),
          ],
        ),
      ),

      // Ana içerik
      body: SafeArea(
  child: Column(
    children: [
      Expanded(
        flex: 2,
        child: Container(
          // Animasyonu küçültmek ve üst orta kısmına yerleştirmek için Center widget'ı ve boyutlandırma eklendi.
          alignment: Alignment.topCenter, // Üst orta konuma yerleştirme
          padding: const EdgeInsets.only(top: 24), // Üstten boşluk bırakmak için padding
          child: SizedBox(
            width: 200, // Genişlik ayarı (ne çok büyük ne de çok küçük)
            height: 200, // Yükseklik ayarı
            child: AspectRatio(
              aspectRatio: 1,
              child: DotLottieLoader.fromAsset(
                "assets/motions/home.lottie",
                frameBuilder: (context, dotlottie) {
                  if (dotlottie != null) {
                    return Lottie.memory(
                      dotlottie.animations.values.single,
                    );
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

      // Alt navigasyon çubuğu
      bottomNavigationBar: BottomMenu(),
    );
  }
}
