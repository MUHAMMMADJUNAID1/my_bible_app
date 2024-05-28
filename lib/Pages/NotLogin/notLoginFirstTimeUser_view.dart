import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_bibile_app/Pages/setting/setting_view.dart';

import '../../common/customFont1.dart';
import '../BibleDetail/bibleDetial_view.dart';

class FirstTimeUserView extends StatefulWidget {
  const FirstTimeUserView({super.key});

  @override
  State<FirstTimeUserView> createState() => _FirstTimeUserViewState();
}

class _FirstTimeUserViewState extends State<FirstTimeUserView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        forceMaterialTransparency: true,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Image.asset(
              'assets/img/notsign.png',
              width: 40.w,
              height: 40.h,
            ),
            SizedBox(
              width: 15.w,
            ),
            InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 40.h,
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(),
                  color: Color(0xffEDEDED),
                ),
                child: CustomFont1(
                  text: 'Login',
                  fontColor: const Color(0xff1D2433),
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            )
          ],
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return SettingView();
                },
              ));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "assets/img/setting.png",
                scale: 4.sp,
              ),
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 29.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomFont1(
                  text: 'Newest Available',
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w600,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    size: 30.sp,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Expanded(
              child: ListView.separated(
                // physics: NeverScrollableScrollPhysics(),
                itemCount: 20,
                shrinkWrap: true,
                padding: const EdgeInsets.only(
                  right: 20,
                ),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const BibleDetail();
                        },
                      ));
                    },
                    child: SizedBox(
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/img/bibleimg.png',
                                width: 72.w,
                                height: 106.h,
                              ),
                              SizedBox(
                                width: 25.w,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomFont1(
                                    text: 'Bengali',
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  CustomFont1(
                                    text: 'Bengali O.V. Bible',
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    fontColor: const Color(0xffBABBC2),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Container(
                                    width: 72.w,
                                    height: 24.h,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all(
                                        color: const Color(0xffBABBC2),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
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
                                          text: '535K ',
                                          fontSize: 12.sp,
                                          fontColor: const Color(0xffBABBC2),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              'assets/img/downIcon.svg',
                              width: 19.w,
                              height: 20.h,
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => SizedBox(height: 10.h),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
