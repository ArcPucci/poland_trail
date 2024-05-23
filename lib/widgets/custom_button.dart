import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trail_poland/utils/utils.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onTap,
    this.width,
    required this.text,
  });

  final VoidCallback? onTap;
  final double? width;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width ?? 286.w,
        height: 57.h,
        padding: EdgeInsets.all(16.sp),
        decoration: BoxDecoration(
          color: ThemeColors.red,
          borderRadius: BorderRadius.circular(40.r),
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: ThemeStyles.white20,
        ),
      ),
    );
  }
}
