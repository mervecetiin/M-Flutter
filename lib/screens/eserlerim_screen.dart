//eserlerim ekranı

import 'package:flutter/material.dart';

import '../widgets/bottom_menu.dart';

class EserlerimScreen extends StatelessWidget {
  const EserlerimScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body : Center(
        child: Text("eserlerim ekranım"),
      ),
      bottomNavigationBar: BottomMenu(),
    );
  }
}
