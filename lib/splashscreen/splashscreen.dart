import 'dart:async';
import 'package:flutter/material.dart';
import 'package:instagram_skodi/bottom/bottom.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final waktusplashdurasi = 5;

  @override
  void initState() {
    super.initState();
    _menjalankan();
  }

  _menjalankan() async {
    var _duration = Duration(seconds: waktusplashdurasi);
    return Timer(_duration, navigasicekuser);
  }

  void navigasicekuser() {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (BuildContext context) => const Bottom()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          'assets/logo/ig.png',
          height: 90,
          width: 90,
        ),
      ),
    );
  }
}
