import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trail_poland/models/models.dart';
import 'package:trail_poland/utils/utils.dart';

class QuizButton extends StatelessWidget {
  const QuizButton({
    super.key,
    this.onTap,
    this.selected = false,
    required this.answer,
  });

  final bool selected;
  final VoidCallback? onTap;
  final Answer answer;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 358.w,
        height: 56.h,
        padding: EdgeInsets.all(16.sp),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40.r),
        ),
        child: Row(
          children: [
            Image.asset(
              selected
                  ? 'assets/images/icons/radio_btn_selected.png'
                  : 'assets/images/icons/radio_btn.png',
              width: 24.w,
              height: 24.h,
              fit: BoxFit.contain,
            ),
            SizedBox(width: 16.w),
            Text(
              answer.answer,
              style: ThemeStyles.black15,
            ),
          ],
        ),
      ),
    );
  }
}
