import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../Picker/pickerView.dart';
import '../../common/bottombtn.dart';
import '../../common/customFont1.dart';
import '../../common/pickColor.dart';
import '../../common/sharebtns.dart';
import '../Explain/explain_view.dart';
import '../Related/related_view.dart';

class SelectionOfVerse extends StatefulWidget {
  const SelectionOfVerse({super.key});

  @override
  State<SelectionOfVerse> createState() => _SelectionOfVerseState();
}

class _SelectionOfVerseState extends State<SelectionOfVerse> {
  final ScrollController _scrollController = ScrollController();
  bool _isButtonVisible = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  void _scrollListener() {
    if (_scrollController.offset > 100 && !_isButtonVisible) {
      setState(() {
        _isButtonVisible = true;
      });
    } else if (_scrollController.offset <= 100 && _isButtonVisible) {
      setState(() {
        _isButtonVisible = false;
      });
    }
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Color selectedHighlightColor = Colors.transparent;
    void _verseSaved() {
      showModalBottomSheet(
        context: context,
        builder: (context) => Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          width: MediaQuery.of(context).size.width,
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
              SizedBox(height: 80.h),
              SizedBox(
                width: 165.w,
                child: InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 40.h,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black, width: 2),
                      color: Colors.transparent,
                    ),
                    child: Row(
                      children: [
                        CustomFont1(
                          text: 'Verse Saved',
                          fontColor: const Color(0xff1D2433),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        SvgPicture.asset('assets/img/saved.svg')
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
    }

    void _verseCopied() {
      showModalBottomSheet(
        context: context,
        builder: (context) => Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          width: MediaQuery.of(context).size.width,
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
                height: 80.h,
              ),
              SizedBox(
                width: 165.w,
                child: InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 40.h,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black, width: 2),
                      color: Colors.transparent,
                    ),
                    child: Row(
                      children: [
                        CustomFont1(
                          text: 'Verse Copied',
                          fontColor: const Color(0xff1D2433),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                        ),
                        SizedBox(
                          width: 7.w,
                        ),
                        SvgPicture.asset('assets/img/copy.svg')
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
    }

    void _showShareBottomSheet() {
      showModalBottomSheet(
        context: context,
        builder: (context) => Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          width: MediaQuery.of(context).size.width,
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

    // Default color
    void _showModalBottomSheet() {
      showModalBottomSheet(
        useSafeArea: true,
        context: context,
        builder: (context) {
          return Container(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            width: MediaQuery.of(context).size.width,
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
                      onTap: () {
                        setState(() {
                          selectedHighlightColor =
                              Colors.red; // Set selected color
                        });
                      },
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
                      onTap: () => _showShareBottomSheet(),
                      text: 'Share',
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Bottombtn(
                      onTap: () => _verseCopied(),
                      text: 'Copy',
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Bottombtn(
                      onTap: () => _verseSaved(),
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
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return const ExplainView();
                          },
                        ));
                      },
                      text: 'Explain',
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Bottombtn(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return const ReletedView();
                          },
                        ));
                      },
                      text: 'Related',
                    ),
                  ],
                )
              ],
            ),
          );
        },
        enableDrag: true,
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            CustomScrollView(
              controller: _scrollController,
              slivers: [
                SliverAppBar(
                  pinned: false,
                  leading: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                      size: 16,
                    ),
                  ),
                  centerTitle: true,
                  toolbarTextStyle:
                      const TextStyle(fontSize: 36, color: Colors.green),
                  automaticallyImplyLeading: true,
                  titleTextStyle: const TextStyle(color: Colors.green),
                  actions: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.play_circle_outline,
                        color: Colors.black,
                        size: 28,
                      ),
                    ),
                  ],
                  floating: false,
                  expandedHeight: 170,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return const PickerView();
                                },
                              ));
                            },
                            child: const Text(
                              'Isaiah',
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.black,
                                fontFamily: 'Playfair Display',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          const Text(
                            '5',
                            style: TextStyle(
                              fontSize: 60,
                              color: Colors.black,
                              fontFamily: 'Playfair Display',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      // Your body content goes here
                      // You can start with an empty container or any other widgets you want
                      return Container();
                    },
                    childCount: 100, // Adjust this count based on your content
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  sliver: SliverList(
                    delegate: SliverChildListDelegate([
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        'Everlasting Salvation for Zion',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Playfair Display",
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SelectableText.rich(
                        onSelectionChanged: (TextSelection selection, _) {
                          if (selection.baseOffset != selection.extentOffset) {
                            _showModalBottomSheet();
                          }
                        },
                        dragStartBehavior: DragStartBehavior.start,
                        enableInteractiveSelection: true,
                        TextSpan(
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                              backgroundColor: selectedHighlightColor,
                              fontFamily: 'Playfair Display'),
                          children: const [
                            TextSpan(
                                text: '1',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17)),
                            TextSpan(
                                text:
                                    ' Hearken to me, ye that follow after righteousness, ye that seek the Lord: look unto the rock whence ye are hewn, and to the hole of the pit whence ye are digged.'),
                            TextSpan(
                                text: '\n\n2',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17)),
                            TextSpan(
                                text:
                                    ' Look unto Abraham your father, and unto Sarah that bare you: for I called him alone, and blessed him, and increased him. '),
                            TextSpan(
                                text: '\n\n3',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17)),
                            TextSpan(
                                text:
                                    ' For the Lord shall comfort Zion: he will comfort all her waste places; and he will make her wilderness like Eden, and her desert like the garden of the Lord; joy and gladness shall be found therein, thanksgiving, and the voice of melody.'),
                            TextSpan(
                                text: '\n\n4',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17)),
                            TextSpan(
                                text:
                                    ' Hearken unto me, my people; and give ear unto me, O my nation: for a law shall proceed from me, and I will make my judgment to rest for a light of the people.'),
                            TextSpan(
                                text: '\n\n5',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17)),
                            TextSpan(
                                text:
                                    ' My righteousness is near; my salvation is gone forth, and mine arms shall judge the people; the isles shall wait upon me, and on'),
                            TextSpan(
                                text: '\n\n6',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17)),
                            TextSpan(
                                text:
                                    ' Lift up your eyes to the heavens, and look upon the earth beneath: for the heavens shall vanish away like smoke, and the earth shall wax old like a garment, and they that dwell therein shall die in like manner: but my salvation shall be for ever, and my righteousness shall not be abolished.'),
                          ],
                        ),
                      ),
                    ]),
                  ),
                ),
              ],
            ),
            if (_isButtonVisible)
              Container(
                width: 154.w,
                height: 40.h,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                margin: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'ISAIAH 51',
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Playfair Display',
                      ),
                    ),
                    InkWell(
                      borderRadius: BorderRadius.circular(50),
                      onTap: () {},
                      child: Container(
                        width: 30.w,
                        height: 30.h,
                        
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              color: Colors.black.withOpacity(0.3),
                              width: 1,
                            )),
                        child: const Icon(
                          Icons.play_arrow,
                        ),
                      ),
                    )
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
