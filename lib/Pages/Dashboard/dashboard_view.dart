// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_bibile_app/Pages/BibleDetail/bibleDetial_view.dart';
import 'package:my_bibile_app/common/customFont1.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
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
              'assets/img/profileimg.png',
              width: 40.w,
              height: 40.h,
            ),
            SizedBox(
              width: 8.w,
            ),
            Text(
              'Hi, Ben',
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                fontFamily: 'Inter',
              ),
            ),
          ],
        ),
        actions: [
          InkWell(
            borderRadius: BorderRadius.circular(50),
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.search,
                color: Colors.black,
                size: 24.h,
              ),
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.h,
              ),
              CustomFont1(
                text: 'Recently Used',
                fontSize: 24.sp,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                height: 240.h,
                child: ListView.separated(
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return BibleDetail();
                          },
                        ));
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/img/bibleimg.png',
                            height: 191.h,
                            width: 124.w,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 5.w,
                              ),
                              CustomFont1(
                                text: 'English',
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ),
                              SizedBox(
                                width: 40.w,
                              ),
                              InkWell(
                                onTap: () {},
                                borderRadius: BorderRadius.circular(50),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: SvgPicture.asset(
                                    'assets/img/downIcon.svg',
                                    width: 14.w,
                                    height: 14.w,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          CustomFont1(
                            text: ' BSI of India - 2016',
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            fontColor: const Color(0xffBABBC2),
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 20.w,
                    );
                  },
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              CustomFont1(
                text: 'Newest Available',
                fontSize: 24.sp,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(
                height: 15.h,
              ),
              ListView.separated(
                  shrinkWrap: true,
                  padding: const EdgeInsets.only(
                    right: 20,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return BibleDetail();
                          },
                        ));
                      },
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
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: index / 2 == 1
                                ? SvgPicture.asset(
                                    'assets/img/downIcon.svg',
                                    width: 19.w,
                                    height: 20.h,
                                  )
                                : SvgPicture.asset(
                                    'assets/img/succIcon.svg',
                                    width: 19.w,
                                    height: 20.h,
                                  ),
                          )
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(
                        height: 10.h,
                      ),
                  itemCount: 3),
            ],
          ),
        ),
      ),
    );
  }
}
