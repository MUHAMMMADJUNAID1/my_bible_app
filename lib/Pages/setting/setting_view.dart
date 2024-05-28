import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_bibile_app/Pages/Dashboard/dashboard_view.dart';
import 'package:my_bibile_app/common/customFont1.dart';

class SettingView extends StatelessWidget {
  SettingView({super.key});

  List setting = [
    {"img": "assets/img/person.svg", "tite": "Account"},
    {"img": "assets/img/notification.svg", "tite": "Notifications"},
    {"img": "assets/img/language.svg", "tite": "Change Language"},
    {"img": "assets/img/terms.svg", "tite": "Terms and Conditions"},
    {"img": "assets/img/privacy.svg", "tite": "Privacy Policy"},
    {"img": "assets/img/about.svg", "tite": "About"},
    {"img": "assets/img/logout.svg", "tite": "Logout"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomFont1(
          text: 'Settings',
          fontSize: 22.sp,
          fontWeight: FontWeight.w400,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        child: ListView.separated(
            itemBuilder: (context, index) {
              var setObj = setting[index] as Map;
              return ListTile(
                onTap: () {
                  index == 2
                      ? Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return DashboardView();
                    },
                  ))
                      : SizedBox();
                },
                enableFeedback: false,
                leading: SvgPicture.asset(
                  "${setObj['img']}",
                  width: 20.w,
                  height: 20.h,
                ),
                title: CustomFont1(
                  text: "${setObj['tite']}",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
              );
            },
            separatorBuilder: (context, index) => Divider(
                  color: const Color(0xff292826).withOpacity(0.2),
                ),
            itemCount: setting.length),
      ),
    );
  }
}
