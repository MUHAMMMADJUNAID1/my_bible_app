import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_bibile_app/Pages/Dashboard/dashboard_view.dart';
import 'package:my_bibile_app/Pages/NotLogin/notLoginFirstTimeUser_view.dart';

import '../../common/customLoginButton.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return const FirstTimeUserView();
              },
            ));
          },
          child: SvgPicture.asset(
            'assets/img/cancel.svg',
            width: 18.w,
            height: 18.h,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 50.h,
            ),
            Image.asset(
              'assets/img/logoimg.png',
              width: 127.w,
              height: 135.h,
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'MyBible app',
              style: TextStyle(
                fontSize: 24.sp,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              textAlign: TextAlign.center,
              'Connect with your faith through\nThe Holy Bible in every Indian language',
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.normal,
                color: Colors.black45,
                fontFamily: 'Inter',
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            CustomLoginButton(
              image: 'assets/img/google.svg',
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const DashboardView();
                  },
                ));
              },
              title: 'Login with Google',
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomLoginButton(
              image: 'assets/img/apple.svg',
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const DashboardView();
                  },
                ));
              },
              bgColor: Colors.black,
              title: 'Login with Apple',
              titleColor: Colors.white,
            ),
            SizedBox(
              height: 200.h,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'By signing in, you agree to our ',
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: const Color.fromRGBO(117, 117, 117, 1),
                      fontFamily: 'Inter',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Terms and Conditions',
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: const Color.fromRGBO(117, 117, 117, 1),
                        fontFamily: 'Inter',
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
