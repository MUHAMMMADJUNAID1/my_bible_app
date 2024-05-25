import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_bibile_app/Pages/BibleDetail/bibleDetial_view.dart';
import 'package:my_bibile_app/Pages/Dashboard/dashboard_view.dart';
import 'package:my_bibile_app/Pages/SelectionOFVerse/selectionOfVerse.dart';
import 'package:my_bibile_app/Pages/setting/setting_view.dart';
import 'package:my_bibile_app/Picker/pickerView.dart';

import 'Pages/Auth/login_view.dart';

void main() => runApp(
      // DevicePreview(
      //  enabled: !kReleaseMode,
      //  builder: (context) =>
      const MyApp(), // Wrap your app
      //  ),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
      designSize: const Size(390, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Bible App',
          theme: ThemeData(
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          home: child,
        );
      },
      child: const LoginView(),
    );
  }
}
