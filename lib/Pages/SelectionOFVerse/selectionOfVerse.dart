// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_bibile_app/Pages/setting/setting_view.dart';
import 'package:my_bibile_app/common/bottombtn.dart';

import 'package:my_bibile_app/common/customFont1.dart';
import 'package:my_bibile_app/common/sharebtns.dart';

import '../../common/pickColor.dart';

class SelectionOfVerse extends StatefulWidget {
  const SelectionOfVerse({super.key});

  @override
  State<SelectionOfVerse> createState() => _SelectionOfVerseState();
}

class _SelectionOfVerseState extends State<SelectionOfVerse> {
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    void _showShareBottomSheet(BuildContext context) {
      showModalBottomSheet(
        context: context,
        builder: (context) => Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          width: MediaQuery.sizeOf(context).width,
          height: 289.h,
          child: Column(
            children: [
              Container(
                width: 50.w,
                height: 4.h,
                decoration: BoxDecoration(
                  color: const Color(0xffD9D9D9),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomFont1(
                text: 'Isaiah 51:3',
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(
                height: 25.h,
              ),
              Center(
                child: SizedBox(
                  width: 85.w,
                  child: Bottombtn(
                    onTap: () {},
                    text: 'Share',
                    bgColor: Colors.transparent,
                    border: Border.all(color: Colors.black, width: 2),
                  ),
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  sharebtns(
                    text: 'Chat',
                    onTap: () {},
                    imgPath: 'assets/img/msgicon.svg',
                  ),
                  sharebtns(
                    text: 'Email',
                    onTap: () {},
                    imgPath: 'assets/img/emailicon.svg',
                  ),
                  sharebtns(
                    text: 'Twitter',
                    onTap: () {},
                    imgPath: 'assets/img/twittericon.svg',
                  ),
                  sharebtns(
                    text: 'Whatsapp',
                    onTap: () {},
                    imgPath: 'assets/img/whatsappicon.svg',
                  ),
                  sharebtns(
                    text: 'More',
                    onTap: () {},
                    imgPath: 'assets/img/moreicon.svg',
                  ),
                ],
              )
            ],
          ),
        ),
      );
    }

    void _showModalBottomSheet() {
      showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            width: MediaQuery.sizeOf(context).width,
            height: 289.h,
            child: Column(
              children: [
                Container(
                  width: 50.w,
                  height: 4.h,
                  decoration: BoxDecoration(
                    color: const Color(0xffD9D9D9),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                CustomFont1(
                  text: 'Isaiah 51:3',
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(
                  height: 25.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SelectColor(
                      onTap: () {},
                    ),
                    SelectColor(
                      onTap: () {},
                      color: const Color(0xffFFCACA),
                    ),
                    SelectColor(
                      onTap: () {},
                      color: const Color(0xffCFDDFF),
                    ),
                    SelectColor(
                      onTap: () {},
                      color: const Color(0xffCCFDE5),
                    ),
                    SelectColor(
                      onTap: () {},
                      color: const Color(0xffFFE4BB),
                    ),
                    SelectColor(
                      onTap: () {},
                      color: const Color(0xffF1D0F2),
                    ),
                    SelectColor(
                      onTap: () {},
                      color: const Color(0xffF3FECA),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Bottombtn(
                      onTap: () => _showShareBottomSheet(context),
                      text: 'Share',
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Bottombtn(
                      onTap: () {},
                      text: 'Copy',
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Bottombtn(
                      onTap: () {},
                      text: 'Save',
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Bottombtn(
                      onTap: () {},
                      text: 'Explain',
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Bottombtn(
                      onTap: () {},
                      text: 'Related',
                    ),
                  ],
                )
              ],
            ),
          );
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Isaiah 51',
          style: TextStyle(
            fontSize: 25.sp,
            fontFamily: 'Playfair Display',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 15.h,
            ),
            Text(
              'Everlasting Salvation for Zion',
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w400,
                fontFamily: "Playfair Display",
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text.rich(
              style: TextStyle(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  fontFamily: 'Playfair Display'),
              TextSpan(
                children: [
                  TextSpan(
                      text:
                          '1 Hearken to me, ye that follow after righteousness, ye that seek the Lord: look unto the rock whence ye are hewn, and to the hole of the pit whence ye are digged.'),
                  TextSpan(
                      text:
                          '\n\n2 Look unto Abraham your father, and unto Sarah that bare you: for I called him alone, and blessed him, and increased him. '),
                  TextSpan(
                      text:
                          '\n\n2 Look unto Abraham your father, and unto Sarah that bare you: for I called him alone, and blessed him, and increased him. '),
                  TextSpan(
                      text:
                          '\n1 Hearken to me, ye that follow after righteousness, ye that seek the Lord: look unto the rock whence ye are hewn, and to the hole of the pit whence ye are digged.'),
                ],
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  _showModalBottomSheet();
                },
                child: Text('Open'),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SettingView(),
                      ));
                },
                child: Text('Setting'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
