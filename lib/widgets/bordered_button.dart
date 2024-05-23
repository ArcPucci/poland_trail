import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trail_poland/utils/utils.dart';

class BorderedButton extends StatelessWidget {
  const BorderedButton({
    super.key,
    this.width,
    required this.text,
    this.onTap,
    required this.iconButton,
    this.height,
  });

  final double? width;
  final double? height;
  final String text;
  final VoidCallback? onTap;
  final bool iconButton;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height ?? 57.h,
        padding: EdgeInsets.all(16.sp),
        decoration: BoxDecoration(
          border: Border.all(color: ThemeColors.red),
          borderRadius: BorderRadius.circular(40.r),
        ),
        alignment: Alignment.center,
        child: iconButton
            ? Image.asset(
                'assets/images/icons/share.png',
                fit: BoxFit.cover,
              )
            : Text(
                text,
                style: ThemeStyles.red15,
              ),
      ),
    );
  }
}
