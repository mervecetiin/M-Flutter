import 'package:flutter/material.dart';

import '../widgets/bottom_menu.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body : Center(
        child: Text("arama ekranım"),
      ),
      bottomNavigationBar: BottomMenu(),
    );
  }
}