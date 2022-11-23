import 'package:flutter/material.dart';
import 'package:notes_app/util/routes.dart';
import 'package:notes_app/util/styles.dart';
import 'package:sizer/sizer.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(
      Duration(seconds: 10),
      () {
        return Navigator.pushNamedAndRemoveUntil(
            context, Routes.LOGIN_SCREEN, (route) => false);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/images/app_icon.png',
                fit: BoxFit.fitHeight,
                height: 100,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/ind_flag.png',
                      height: 18,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Produk Indonesia',
                      style: poppinsMedium.copyWith(
                        fontSize: 14.sp,
                        color: Color(0xFFFF0000),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
