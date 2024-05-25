import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'customFont1.dart';

class Bottombtn extends StatelessWidget {
  
  const Bottombtn({
    super.key,
    required this.onTap,
    required this.text,
    this.border,
    this.bgColor = const Color(0xffEDEDED),
  });
  final VoidCallback onTap;
  final String text;
  final BoxBorder? border;
  final Color bgColor;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        height: 40.h,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: border,
          color: bgColor,
        ),
        child: CustomFont1(
          text: text,
          fontColor: const Color(0xff1D2433),
          fontSize: 16.sp,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}

