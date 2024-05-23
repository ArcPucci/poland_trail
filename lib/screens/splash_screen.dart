
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:trail_poland/services/services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    final preferences = Provider.of<PreferencesService>(context, listen: false);

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      final path = preferences.getFirstInit() ? '/onboarding_screen' : '/';
      Future.delayed(const Duration(milliseconds: 800), () {
        context.go(path);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/splash_screen.png',
      width: 390.w,
      height: 844.h,
      fit: BoxFit.cover,
    );
  }
}
