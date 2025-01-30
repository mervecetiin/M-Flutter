//favoriler ekranı

import 'package:flutter/material.dart';

import '../widgets/bottom_menu.dart';

class FavorilerScreen extends StatelessWidget {
  const FavorilerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body : Center(
        child: Text("favoriler ekranım"),
      ),
      bottomNavigationBar: BottomMenu(),
    );
  }
}
