import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:trail_poland/providers/providers.dart';
import 'package:trail_poland/utils/utils.dart';
import 'package:trail_poland/widgets/widgets.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<QuizProvider>(
      builder: (BuildContext context, value, Widget? child) {
        return Column(
          children: [
            Container(
              width: 390.w,
              height: 320.h,
              padding: EdgeInsets.symmetric(
                horizontal: 16.w,
                vertical: 16.h,
              ),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16.r),
                  bottomRight: Radius.circular(16.r),
                ),
                image: const DecorationImage(
                  image: AssetImage('assets/images/quiz1.png'),
                  fit: BoxFit.cover,
                  opacity: 0.5,
                ),
              ),
              child: SafeArea(
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Polish ${value.quiz.name}',
                            style: ThemeStyles.greyLight15,
                          ),
                          Text(
                            value.question.question,
                            style: ThemeStyles.white24.copyWith(
                              height: 1.2,
                              fontSize: 24.r,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      child: CloseBtn(
                        onTap: () => context.go('/quiz'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 40.h),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                itemCount: value.question.answers.length,
                itemBuilder: (context, index) {
                  final answer = value.question.answers[index];
                  return Padding(
                    padding: EdgeInsets.only(bottom: 16.h),
                    child: QuizButton(
                      selected: index == value.answerIndex,
                      answer: answer,
                      onTap: () => value.selectAnswer(index),
                    ),
                  );
                },
              ),
            ),
            CustomButton(
              width: 358.w,
              text: 'Submit',
              onTap: value.nextQuestion,
            ),
            SizedBox(height: 34.h),
          ],
        );
      },
    );
  }
}
