import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:managerapp/pages/splash/splash_controller.dart';

import 'package:managerapp/util/resources.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final splshController = Get.put(SplashController());

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      splshController.getUserData();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      body: _body(),
    );
  }

  _body() {
    return Stack(
      children: [
        Container(
          alignment: Alignment.bottomCenter,
          height: double.infinity,
          width: double.maxFinite,
          decoration: BoxDecoration(
              gradient: RadialGradient(colors: [
            HexColor('#52B7D5'),
            HexColor('#2887C5'),
          ], radius: .8)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text("'App Version: 1.0'"),
          ),
        ),
      ],
    );
  }
}
