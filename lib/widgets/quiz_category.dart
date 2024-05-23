import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trail_poland/models/quiz.dart';
import 'package:trail_poland/utils/utils.dart';

class QuizCategory extends StatelessWidget {
  const QuizCategory({
    super.key,
    this.onTap,
    required this.quiz,
  });

  final Quiz quiz;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 171.w,
        height: 169.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          image: DecorationImage(
            image: AssetImage(quiz.image),
            fit: BoxFit.cover,
          ),
        ),
        clipBehavior: Clip.antiAlias,
        alignment: Alignment.bottomCenter,
        child: Container(
          width: 171.w,
          height: 39.h,
          color: Colors.white,
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(left: 16.w),
          child: Text(
            quiz.name,
            style: ThemeStyles.black17,
          ),
        ),
      ),
    );
  }
}
