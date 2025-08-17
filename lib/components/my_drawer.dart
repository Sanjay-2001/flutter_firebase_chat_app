import 'package:firebase_chat_app/services/auth/auth_service.dart';
import 'package:firebase_chat_app/pages/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    void logout() {
      final auth = AuthService();
      auth.signOut();
    }

    return Drawer(
      backgroundColor: colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              DrawerHeader(
                child: Center(
                  child: Icon(
                    Icons.message,
                    color: colorScheme.primary,
                    size: 40.sp,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25.w),
                child: ListTile(
                  title: Text(
                    'H O M E',
                    style: TextStyle(color: colorScheme.primary),
                  ),
                  leading: Icon(Icons.home_rounded, color: colorScheme.primary),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25.w),
                child: ListTile(
                  title: Text(
                    'S E T T I N G S',
                    style: TextStyle(color: colorScheme.primary),
                  ),
                  leading: Icon(
                    Icons.settings_rounded,
                    color: colorScheme.primary,
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SettingsPage(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),

          Padding(
            padding: EdgeInsets.only(left: 25.w, bottom: 25.h),
            child: ListTile(
              title: Text(
                'L O G O U T',
                style: TextStyle(color: colorScheme.primary),
              ),
              leading: Icon(Icons.logout_rounded, color: colorScheme.primary),
              onTap: logout,
            ),
          ),
        ],
      ),
    );
  }
}
