import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profil',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 170, 220, 255), // Pastel mavi ton
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundColor: Color.fromARGB(255, 233, 244, 255), // Hafif mavi ton
              child: Icon(
                Icons.person,
                size: 50,
                color: Color.fromARGB(255, 0, 51, 102), // Koyu mavi ton
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Kullanıcı Adı: John Doe',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 0, 51, 102),
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'E-posta: johndoe@example.com',
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 0, 51, 102),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Örneğin, çıkış işlemi buraya eklenecek
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Çıkış yapıldı!')),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 170, 220, 255), // Pastel mavi
              ),
              child: const Text('Çıkış Yap'),
            ),
          ],
        ),
      ),
    );
  }
}
