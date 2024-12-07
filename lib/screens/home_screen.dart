import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'profile_screen.dart';
// Profil sayfasını oluşturduğumuz dosya

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Uygulama çubuğu
      appBar: AppBar(
        title: const Text(
          'Artify',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 170, 220, 255), // Hafif mavi ton
        actions: [
          IconButton(
            icon: const Icon(CupertinoIcons.bell),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Bildirimler')),
              );
            },
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
                color: Color.fromARGB(255, 170, 220, 255),
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
                      color: Color.fromARGB(255, 0, 51, 102),
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
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.settings),
              title: const Text('Ayarlar'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.info),
              title: const Text('Hakkında'),
              onTap: () {},
            ),
          ],
        ),
      ),

      // Ana içerik
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Keşfetmek için hazır mısınız?',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 51, 102),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Sanat galerimizde en iyi eserleri keşfedin!',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            const SizedBox(height: 20),

            // Kategoriler
            const Text(
              'Kategoriler',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  _buildCategoryCard(
                    context,
                    icon: CupertinoIcons.paintbrush,
                    title: 'Resim',
                    color: Colors.blueAccent.shade100,
                  ),
                  _buildCategoryCard(
                    context,
                    icon: CupertinoIcons.camera,
                    title: 'Fotoğraf',
                    color: Colors.orangeAccent.shade100,
                  ),
                  _buildCategoryCard(
                    context,
                    icon: CupertinoIcons.book,
                    title: 'Edebiyat',
                    color: Colors.greenAccent.shade100,
                  ),
                  _buildCategoryCard(
                    context,
                    icon: CupertinoIcons.music_note,
                    title: 'Müzik',
                    color: Colors.purpleAccent.shade100,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      // Alt navigasyon çubuğu
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 233, 244, 255),
        selectedItemColor: const Color.fromARGB(255, 0, 102, 204),
        unselectedItemColor: const Color.fromARGB(135, 0, 0, 0),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Ana Sayfa',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search),
            label: 'Keşfet',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person),
            label: 'Profil',
          ),
        ],
        onTap: (index) {
          if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProfilePage()),
            );
          }
        },
      ),
    );
  }

  // Kategori kartları oluşturma fonksiyonu
  Widget _buildCategoryCard(
    BuildContext context, {
    required IconData icon,
    required String title,
    required Color color,
  }) {
    return GestureDetector(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('$title kategorisine yönlendiriliyor...')),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 50, color: Colors.white),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
