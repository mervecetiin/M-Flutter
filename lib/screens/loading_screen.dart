// açılış ekranımız buraya gelicek.

import 'package:dotlottie_loader/dotlottie_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/core/routes.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

import '../core/constants.dart';


class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 140, 11, 69),
      body: SizedBox.expand(
        //width: double.infinity,
        child: Column(
          children: [
            // Logo bölümü
            Expanded(
              child: Container(
                width: 250,
                height: 250,
                child: Image.asset(
                  'assets/images/logo2.webp',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            
           
            
            // Yükleniyor yazısı
           // CircularProgressIndicator(),
            InkWell(
              onTap: () => context.go("/home"),
              child: SizedBox(
                width: 180,
                child: DotLottieLoader.fromAsset("assets/motions/1m9x7tmVfW.lottie",
                      frameBuilder: (BuildContext ctx, DotLottie? dotlottie) {
                    if (dotlottie != null) {
                      return Lottie.memory(dotlottie.animations.values.single);
                    } else {
                      return Container();
                    }
                  }),
              ),
            ),
          
          //Biraz boşluk

           SizedBox(height:20),

          ],
        ),
      ),
    );
  }
}