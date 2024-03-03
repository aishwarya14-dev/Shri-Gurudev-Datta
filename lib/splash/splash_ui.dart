import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shri_gurudev_datta/splash/left_route.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  void dispose() {
    super.dispose();
  }

  startTime() async {
    return  Timer(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(CreateLeftRoute(widget));
     });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/images/img_splash.jpg"),
            fit: BoxFit.fitWidth
            )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Padding(padding: EdgeInsets.all(20),
              // child: FadeAnimation(),
              // ), 
            ],
          ),
        ),
      )),
    );
  }
}