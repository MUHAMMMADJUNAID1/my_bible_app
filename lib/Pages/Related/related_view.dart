import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_bibile_app/common/customFont1.dart';

class ReletedView extends StatelessWidget {
  const ReletedView({super.key});

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
        child: SingleChildScrollView(
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
                  fontFamily: 'Playfair Display',
                  color: Colors.black,
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
              Column(
                children: [
                  Theme(
                    data: Theme.of(context).copyWith(
                      dividerColor: Colors.transparent,
                    ),
                    child: ExpansionTile(
                      title: Text(
                        'Isaiah 52:9',
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Inter',
                        ),
                      ),
                      trailing: const Opacity(
                        opacity: 0.0,
                        child: Icon(Icons.more_vert),
                      ),
                    ),
                  ),
                  const Divider(
                    color: Color.fromRGBO(117, 117, 117, 1),
                    height: 2,
                  ),
                ],
              ),
              Column(
                children: [
                  Theme(
                    data: Theme.of(context).copyWith(
                      dividerColor: Colors.transparent,
                    ),
                    child: ExpansionTile(
                      title: Text(
                        'Isaiah 52:9',
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Inter',
                        ),
                      ),
                      trailing: const Opacity(
                        opacity: 0.0,
                        child: Icon(Icons.more_vert),
                      ),
                    ),
                  ),
                  const Divider(
                    color: Color.fromRGBO(117, 117, 117, 1),
                    height: 2,
                  ),
                ],
              ),
              Column(
                children: [
                  Theme(
                    data: Theme.of(context).copyWith(
                      dividerColor: Colors.transparent,
                    ),
                    child: ExpansionTile(
                      title: Text(
                        'Isaiah 52:9',
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Inter',
                        ),
                      ),
                      trailing: const Opacity(
                        opacity: 0.0,
                        child: Icon(Icons.more_vert),
                      ),
                    ),
                  ),
                  const Divider(
                    color: Color.fromRGBO(117, 117, 117, 1),
                    height: 2,
                  ),
                ],
              ),
              Column(
                children: [
                  Theme(
                    data: Theme.of(context).copyWith(
                      dividerColor: Colors.transparent,
                    ),
                    child: ExpansionTile(
                      title: Text(
                        'Isaiah 52:9',
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Inter',
                        ),
                      ),
                      trailing: const Opacity(
                        opacity: 0.0,
                        child: Icon(Icons.more_vert),
                      ),
                    ),
                  ),
                  const Divider(
                    color: Color.fromRGBO(117, 117, 117, 1),
                    height: 2,
                  ),
                ],
              ),
              Column(
                children: [
                  Theme(
                    data: Theme.of(context).copyWith(
                      dividerColor: Colors.transparent,
                    ),
                    child: ExpansionTile(
                      title: Text(
                        'Isaiah 52:9',
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Inter',
                        ),
                      ),
                      trailing: const Opacity(
                        opacity: 0.0,
                        child: Icon(Icons.more_vert),
                      ),
                    ),
                  ),
                  const Divider(
                    color: Color.fromRGBO(117, 117, 117, 1),
                    height: 2,
                  ),
                ],
              ),
              Column(
                children: [
                  Theme(
                    data: Theme.of(context).copyWith(
                      dividerColor: Colors.transparent,
                    ),
                    child: ExpansionTile(
                      title: Text(
                        'Isaiah 52:9',
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Inter',
                        ),
                      ),
                      trailing: const Opacity(
                        opacity: 0.0,
                        child: Icon(Icons.more_vert),
                      ),
                    ),
                  ),
                  const Divider(
                    color: Color.fromRGBO(117, 117, 117, 1),
                    height: 2,
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
