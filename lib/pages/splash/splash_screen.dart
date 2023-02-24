import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_demo/pages/login/login_screen.dart';
import 'package:food_demo/theme/app_colors.dart';
import 'package:food_demo/utils/app_strings.dart';
import 'package:food_demo/utils/paths/app_image_paths.dart';

const Duration kShowingLogoDuration = Duration(milliseconds: 1500);

class SplashScreen extends StatelessWidget {
  static const String routeName = '/';

  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _loading(context);
    return Scaffold(
      backgroundColor: AppColors.white,
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 60, right: 60),
            child: Image.asset(AppImagePaths.splashScreen),
          ),
          const Text(
            AppStrings.cookpedia,
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 100),
          const CircularProgressIndicator(color: AppColors.primaryColor),
        ],
      ),
    );
  }

  Future<void> _loading(BuildContext context) async {
    await Future.delayed(kShowingLogoDuration);
    Navigator.pushReplacementNamed(context, LoginScreen.routeName);
  }
}
