import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:trail_poland/providers/providers.dart';
import 'package:trail_poland/utils/utils.dart';
import 'package:trail_poland/widgets/widgets.dart';

class NumberSeatsScreen extends StatelessWidget {
  const NumberSeatsScreen({super.key});

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
              image: AssetImage('assets/images/picker_header.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const GoBack(),
                const Spacer(),
                Text(
                  'How many seats do you want to randomize?',
                  style: ThemeStyles.white24,
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 16.w,
            mainAxisSpacing: 16.h,
            childAspectRatio: 0.7,
            padding: EdgeInsets.all(16.sp),
            children: List.generate(
              4,
              (i) {
                return GestureDetector(
                  onTap: () {
                    final provider = Provider.of<PlaceProvider>(
                      context,
                      listen: false,
                    );
                    provider.randomizePlaces(i + 1);
                    context.go('/picker/number_seats/pick_place');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16.r),
                    ),
                    child: Center(
                      child: Text(
                        '${i + 1} space',
                        style: ThemeStyles.black24,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
