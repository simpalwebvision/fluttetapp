import 'package:chitrakala/controller/auth_controller.dart';
import 'package:chitrakala/pages/broand_pages.dart';
import 'package:chitrakala/view/config/pallete.dart';
import 'package:chitrakala/view/controller/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> main() async {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final authController = AuthController();

  @override
  Widget build(BuildContext context) {
    ThemeController themeController = Get.put(ThemeController());
    return GetX<ThemeController>(
        init: themeController,
        builder: (context) {
          return GetMaterialApp(
            theme: lightThemeData,
            darkTheme: darkThemeData,
            themeMode: themeController.isDarkMode.value
                ? ThemeMode.light
                : ThemeMode.dark,
            debugShowCheckedModeBanner: false,
            home: FutureBuilder(
                future: authController.tryAutoLogin(),
                builder: (contect, authResult) {
                  if (authResult.connectionState == ConnectionState.waiting) {
                    return Center(
                      child: CircularProgressIndicator(
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Colors.red)),
                    );
                  } else {
                    if (authResult.data == true) {}
                    return BroandPages();
                  }
                }),
          );
        });
  }
}
