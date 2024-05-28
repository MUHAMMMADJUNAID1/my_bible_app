import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_bibile_app/common/customFont1.dart';

class ExplainView extends StatelessWidget {
  const ExplainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomFont1(
          text: 'Explain Isaiah 51:3',
          fontSize: 22.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 30.h,
            ),
            Text(
              'For the Lord shall comfort Zion: he will comfort all her waste places; and he will make her wilderness like Eden, and her desert like the garden of the Lord; joy and gladness shall be found therein, thanksgiving, and the voice of melody.',
              style: TextStyle(
                fontSize: 17.sp,
                fontWeight: FontWeight.w400,
                color: Colors.black,
                fontFamily: 'Playfair Display',
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                Container(
                  width: 150.w,
                  height: 1,
                  color: const Color.fromRGBO(117, 117, 117, 1),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: SvgPicture.asset('assets/img/ai.svg'),
                ),
                Container(
                  width: 150.w,
                  height: 1,
                  color: const Color.fromRGBO(117, 117, 117, 1),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomFont1(
              text:
                  "Isaiah 51:3 conveys a message of divine restoration and hope. It promises that God will comfort Zion, symbolizing Jerusalem or the people of Israel, by transforming their desolate and barren areas into lush, flourishing landscapes akin to the Garden of Eden.\n\nThis transformation will bring joy, gladness, thanksgiving, and songs of celebration, reflecting a profound renewal of both the land and the spirit of the people. The verse reassures the faithful of God's enduring care and the ultimate renewal of their circumstances.",
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
            )
          ],
        ),
      ),
    );
  }
}
