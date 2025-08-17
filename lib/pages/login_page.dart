import 'package:flutter/material.dart';
import 'package:firebase_chat_app/components/components.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatefulWidget {
  final void Function() onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void login() {}

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.message, size: 60.w, color: colorScheme.primary),
            SizedBox(height: 50.h),
            Text(
              "Welcome back, you've been missed!",
              style: TextStyle(color: colorScheme.primary, fontSize: 16.sp),
            ),
            SizedBox(height: 25.h),
            MyTextfield(hintText: 'Email', controller: _emailController),
            SizedBox(height: 25.h),
            MyTextfield(
              hintText: 'Password',
              controller: _passwordController,
              obscureText: true,
            ),
            SizedBox(height: 25.h),
            MyButton(text: 'Login', onTap: login),
            SizedBox(height: 25.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Not a member? ',
                  style: TextStyle(color: colorScheme.primary),
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    'Register now',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: colorScheme.primary,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
