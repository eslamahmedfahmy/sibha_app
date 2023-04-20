import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sibha_app/shared/constants/constant_colors.dart';


class AppThemes {
  static ThemeData lightTheme = ThemeData(
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: ConstantColors.gradColor1,
      elevation: 0.0,
      titleTextStyle: TextStyle(
        color: ConstantColors.sbColor,
        fontSize: 25.sp,
      ),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: ConstantColors.gradColor1,
        statusBarIconBrightness: Brightness.light,
      ),
    ),
    fontFamily: 'Mada',
  );
}