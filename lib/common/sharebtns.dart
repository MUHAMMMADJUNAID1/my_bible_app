import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'customFont1.dart';

class sharebtns extends StatelessWidget {
  const sharebtns({
    Key? key,
    required this.text,
    required this.onTap,
    required this.imgPath,
  }) : super(key: key);
  final String text;
  final VoidCallback onTap;
  final String imgPath;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(50),
          child: CircleAvatar(
            backgroundColor: Color(0xffEDEDED),
            radius: 30.sp,
            child: Center(
              child: SvgPicture.asset(
                imgPath,
                width: 24.w,
                height: 24.h,
                color: Color(0xff1D2433),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
        CustomFont1(
          text: text,
          fontSize: 12.sp,
          fontColor: Color(0xff1D2433),
        )
      ],
    );
  }
}
