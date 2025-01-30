import 'package:flutter/material.dart';

import '../widgets/bottom_menu.dart';

class NewScreen extends StatelessWidget {
  const NewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body : Center(
        child: Text("yeni-eser ekranım"),
      ),
      bottomNavigationBar: BottomMenu(),
    );
  }
}