import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sibha_app/layout/layout.dart';
import 'package:sibha_app/shared/components/components.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  goToLayout() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const Layout()),
              (route) => false);
    });
  }

  //52a569

  @override
  void initState() {
    goToLayout();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: buildGradientApp(),
        ),
        child: Center(
          child: Text(
            'تسبيح',
            style: TextStyle(
              fontSize: 120.sp,
              color: Colors.grey[200],
              fontFamily: 'Qahiri',
              //fontWeight: FontWeight.bold,
              shadows: const [
                BoxShadow(
                  color: Color(0xff2FBEC2),
                  blurRadius: 10,
                  spreadRadius: 1.0,
                  offset: Offset(4, 4),
                ),
                BoxShadow(
                  color: Color(0xff0FE195),
                  blurRadius: 10,
                  spreadRadius: 1.0,
                  offset: Offset(-4, -4),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}