import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_bibile_app/Picker/pickerView.dart';

import '../../common/customFont1.dart';

class BibleDetail extends StatelessWidget {
  const BibleDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        forceMaterialTransparency: true,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert,
              color: Colors.black,
              size: 30.sp,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'assets/img/bibleimg.png',
                width: 216.w,
                height: 320.h,
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomFont1(
                text: 'Malayalam Bible',
                fontSize: 24.sp,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'Bible Society of India',
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff1070FF),
                  decoration: TextDecoration.underline,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                width: 115.w,
                height: 24.h,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                    color: const Color(0xffBABBC2),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: 3.w,
                    ),
                    SvgPicture.asset(
                      'assets/img/page.svg',
                      width: 17.w,
                      height: 13.h,
                    ),
                    CustomFont1(
                      text: '535K readers ',
                      fontSize: 12.sp,
                      fontColor: const Color(0xffBABBC2),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                '\nThe Bible Society of India invites the church and \neveryone to join hands in partnership, as we \ncan make this great mission possible through \nyour priceless collaboration and contributions.\nGod’s Word for the God’s World – is made a \nreality by the Bible Society of India.',
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.black,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return PickerView();
                    },
                  ));
                },
                borderRadius: BorderRadius.circular(50),
                child: Container(
                  height: 47.78.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Text(
                    'Select as a Primary Language',
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.white,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
