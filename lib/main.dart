import 'package:firebase_chat_app/auth/login_or_register.dart';
import 'package:flutter/material.dart';
import 'package:firebase_chat_app/themes/light_mode.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: LoginOrRegister(),
          theme: lightMode,
        );
      },
    );
  }
}
