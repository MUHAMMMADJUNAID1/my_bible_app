import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_bibile_app/Pages/SelectionOFVerse/selectionOfVerse.dart';

class PickerView extends StatelessWidget {
  const PickerView({super.key});

  @override
  Widget build(BuildContext context) {
    TabController tabController;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 18.sp,
            ),
          ),
          title: const TextField(
            cursorColor: Colors.black,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              hintText: "Search",
              hintStyle: TextStyle(color: Colors.grey,fontWeight: FontWeight.w300),
              border: InputBorder.none, // Remove TextField border
              contentPadding: EdgeInsets.zero, // Remove default padding
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search_sharp,
                color: Colors.black,
                size: 30.sp,
              ),
            ),
          ],
          forceMaterialTransparency: true,
          bottom: TabBar(
              unselectedLabelStyle: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.normal,
                fontFamily: "Inter",
                color: Colors.black,
              ),
              labelStyle: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                fontFamily: "Inter",
                color: Colors.black,
              ),
              dividerColor: const Color(0xffEDEDED),
              indicatorPadding: const EdgeInsets.only(
                  left: -30, right: -30, top: 5, bottom: 5),
              dividerHeight: 48,
              tabAlignment: TabAlignment.fill,
              indicator: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              tabs: const [
                Tab(
                  text: 'Old Testament',
                  height: 30,
                ),
                Tab(
                  text: 'New Testament',
                ),
              ]),
        ),
        body: TabBarView(children: [
          ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Theme(
                  data: Theme.of(context).copyWith(
                    dividerColor: Colors.transparent,
                  ),
                  child: ExpansionTile(
                    dense: true,
                    trailing: const Opacity(
                      opacity: 0.0,
                      child: Icon(Icons.more_vert),
                    ),
                    title: Row(
                      children: [
                        Container(
                          width: 40.w,
                          height: 40.h,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: const Color(0xffEDEDED),
                          ),
                          child: SvgPicture.asset(
                            'assets/img/doc.svg',
                            width: 24.w,
                            height: 24.h,
                          ),
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        Text(
                          'Genesis',
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            fontFamily: "Inter",
                          ),
                        )
                      ],
                    ),
                    children: [
                      Container(
                        height: 500.h,
                        width: MediaQuery.sizeOf(context).width,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        child: GridView.builder(
                          itemCount: 51,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 6,
                                  crossAxisSpacing: 20.0,
                                  mainAxisSpacing: 20.0),
                          itemBuilder: (context, index) {
                            return Container(
                              width: 37.w,
                              height: 32.h,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: const Color(0xffEDEDED),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Text(
                                "${index + 1}",
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                  fontFamily: "Inter",
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ));
            },
          ),
          Container(
            color: Colors.redAccent,
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const SelectionOfVerse();
                  }));
                },
                child: Text('Selection of verse'),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
