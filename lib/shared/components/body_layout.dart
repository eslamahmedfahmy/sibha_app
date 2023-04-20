import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sibha_app/shared/components/sibha_counter.dart';
import 'package:sibha_app/shared/constants/constant_colors.dart';
import 'package:sibha_app/shared/network/local/cache_helper.dart';


class BodyLayout extends StatefulWidget {
  const BodyLayout({
    Key? key,
  }) : super(key: key);

  @override
  State<BodyLayout> createState() => _BodyLayoutState();
}

class _BodyLayoutState extends State<BodyLayout> {
  int counter = 0;
  late int savedCounter;

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,

      onTap: () {
        incrementCounter();
      },
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  restCounter();
                },
                child:  Text(
                  'تصفير العداد',
                  style: TextStyle(
                      color: ConstantColors.sbColor,
                      fontSize: 16.sp
                  ),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              SibhaCounter(counter: counter),
              SizedBox(
                height: 150.h,
              ),
              const FaIcon(
                FontAwesomeIcons.fingerprint,
                size: 30,
                color: Color(0xff0FE195),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void incrementCounter() {
    setState(() {
      counter++;
    });
    CacheHelper.putData(key: 'saved', value: counter);
  }

  void restCounter() {
    setState(() {
      counter = 0;
    });
    CacheHelper.removeData(key: 'saved');
  }

  void getData() async {
    await CacheHelper.init();
    savedCounter = CacheHelper.getData(key: 'saved') ?? 0;
    setState(() {
      counter = savedCounter;
    });
  }
}