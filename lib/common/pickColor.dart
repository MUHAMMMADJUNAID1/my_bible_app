import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class SelectColor extends StatelessWidget {
  const SelectColor({
    super.key,
    required this.onTap,
    this.color = const Color(0xffFFFDCB),
  });

  final VoidCallback onTap;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(50),
      child: CircleAvatar(
        radius: 20.sp,
        backgroundColor: color,
      ),
    );
  }
}
