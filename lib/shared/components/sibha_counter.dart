import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sibha_app/shared/constants/constant_colors.dart';

class SibhaCounter extends StatelessWidget {
  const SibhaCounter({
    required this.counter,
    Key? key,
  }) : super(key: key);

  final int counter;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.h,
      width: 180.w,
      decoration: counterBoxDecoration(),
      child: Center(
        child: Text(
          '$counter',
          style: TextStyle(
            fontSize: 50.sp,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  BoxDecoration counterBoxDecoration() {
    return BoxDecoration(
      color: ConstantColors.counterColor,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.shade600,
          blurRadius: 5,
          spreadRadius: 1.0,
          offset: const Offset(4, 4),
        ),
        const BoxShadow(
          color: Colors.white,
          blurRadius: 5,
          spreadRadius: 1.0,
          offset: Offset(-4, -4),
        ),
      ],
      shape: BoxShape.circle,
    );
  }
}