import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:trail_poland/providers/quiz_provider.dart';
import 'package:trail_poland/utils/utils.dart';
import 'package:trail_poland/widgets/custom_button.dart';
import 'package:trail_poland/widgets/widgets.dart';

class FinishGameScreen extends StatelessWidget {
  const FinishGameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SafeArea(
        child: Consumer<QuizProvider>(
          builder: (BuildContext context, value, Widget? child) {
            final success = value.success;
            return Column(
              children: [
                SizedBox(height: 24.h),
                Image.asset(
                  success
                      ? 'assets/images/finish_game_img.png'
                      : 'assets/images/finish_game_img_failed.png',
                  width: 358.w,
                  height: 401.h,
                  fit: BoxFit.fill,
                ),
                SizedBox(height: 48.h),
                Text(
                  success ? 'Congratulations!' : 'Good Effort!',
                  style: ThemeStyles.black24,
                ),
                SizedBox(height: 16.h),
                SizedBox(
                  width: 358.w,
                  child: Text(
                    success
                        ? "You've navigated the treasures of Poland like a true explorer! Celebrate your triumph and share it, or challenge yourself once more."
                        : "You stumbled, but every explorer does. Brush off the dust, learn, and try again. Your next adventure awaits!",
                    style: ThemeStyles.grey15,
                  ),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BorderedButton(
                      text: 'Learn',
                      width: success ? 57.w : 171.w,
                      height: success ? 57.w : 57.h,
                      iconButton: success,
                      onTap: () {
                        if(success) return;
                        value.learn();
                      },
                    ),
                    SizedBox(width: 16.w),
                    CustomButton(
                      width: success ? 286.w : 171.w,
                      text: success ? 'Play Again' : 'Try Again',
                      onTap: value.tryAgain,
                    ),
                  ],
                ),
                SizedBox(height: 34.h),
              ],
            );
          },
        ),
      ),
    );
  }
}
