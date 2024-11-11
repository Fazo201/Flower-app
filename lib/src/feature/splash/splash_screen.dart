import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 5), ()=>context.go("/"));
    return Scaffold(
      body: Center(
        child: Lottie.asset(
          "assets/lotties/splash_lottie.json",
          fit: BoxFit.contain,
          repeat: false,
        ),
      ),
    );
  }
}
