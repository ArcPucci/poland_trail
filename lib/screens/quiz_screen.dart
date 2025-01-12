import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:trail_poland/data/data.dart';
import 'package:trail_poland/providers/quiz_provider.dart';
import 'package:trail_poland/utils/utils.dart';
import 'package:trail_poland/widgets/quiz_category.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final overlay = MediaQuery.of(context).padding;
    return Column(
      children: [
        Container(
          width: 390.w,
          height: 201.h + overlay.top,
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
          alignment: Alignment.bottomLeft,
          child: Text(
            'Choose the category you want to challenge yourself',
            style: ThemeStyles.white24,
          ),
        ),
        Expanded(
          child: GridView.builder(
            padding: EdgeInsets.symmetric(
              vertical: 16.h,
              horizontal: 16.w,
            ),
            itemCount: quizzes.length,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 208.h,
              mainAxisSpacing: 16.h,
              crossAxisSpacing: 16.w,
            ),
            itemBuilder: (context, i) {
              final quiz = quizzes[i];
              return QuizCategory(
                quiz: quiz,
                onTap: () {
                  final provider = Provider.of<QuizProvider>(
                    context,
                    listen: false,
                  );
                  provider.selectQuiz(quiz);
                  context.go('/quiz/game');
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
