import 'package:flutter/material.dart';
import 'package:notes_app/util/routes.dart';
import 'package:notes_app/util/styles.dart';
import 'package:notes_app/view/base/login_field.dart';
import 'package:sizer/sizer.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF343E90),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 50, horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hey!',
                style: poppinsRegular.copyWith(
                  color: Color(0xFFFFB038),
                  fontSize: 18.sp,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "let's\nGet Started",
                style: poppinsRegular.copyWith(
                  fontSize: 35.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: Text(
                  'Please login to your account',
                  style: poppinsRegular.copyWith(
                    fontSize: 12.sp,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 40),
              Text(
                'Email',
                style: poppinsRegular.copyWith(
                  fontSize: 12.sp,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              LoginField(
                fillColor: Colors.white,
              ),
              SizedBox(height: 20),
              Text(
                'Password',
                style: poppinsRegular.copyWith(
                  fontSize: 12.sp,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              LoginField(
                fillColor: Colors.white,
                isPassword: true,
                isShowSuffixIcon: true,
              ),
              SizedBox(height: 35),
              Center(
                child: InkWell(
                  highlightColor: Colors.transparent,
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                    decoration: BoxDecoration(
                      color: Color(0xFFFFB038),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Text(
                      'Login',
                      style: poppinsMedium.copyWith(
                        color: Colors.white,
                        fontSize: 12.sp,
                      ),
                    ),
                  ),
                  onTap: () {
                    return Navigator.pushNamedAndRemoveUntil(
                        context, Routes.HOME_SCREEN, (route) => false);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
